-- In a single query find the latest consumption count for different types of consumptions. 
-- The fact_facebook_post_consumptions_by_type_samples is the table for reference.

SELECT  f.consumption_type, f.consumptions_count , f.fact_ts
FROM fact_facebook_post_consumptions_by_type_samples f
INNER JOIN (
            SELECT consumption_type, max(fact_ts) AS date
            FROM fact_facebook_post_consumptions_by_type_samples 
            GROUP BY consumption_type
            ) fp ON f.consumption_type = fp.consumption_type AND  f.fact_ts = fp.date
-- Using Partition method

; with tbl as (
SELECT  f.consumption_type, f.consumptions_count , f.fact_ts, facebook_post_dcs_uid,
 row_number() over ( order by  f.consumption_type) as row_no 
FROM fact_facebook_post_consumptions_by_type_samples f
INNER JOIN (
              SELECT consumption_type, max(fact_ts) AS date
              FROM fact_facebook_post_consumptions_by_type_samples 
              GROUP BY consumption_type
              ) fp ON f.consumption_type = fp.consumption_type AND  f.fact_ts = fp.date 
              Limit 5
           )
SELECT facebook_post_dcs_uid,
  case when row_no=1 then consumptions_count end as link_clicks,
  case when row_no=2 then consumptions_count end  as photo_view,
  case when row_no=3 then consumptions_count end as video_play,
  case when row_no=4 then consumptions_count end as other_clicks
from tbl 
 ;

 ; with tbl as (
        SELECT max(fact_ts),facebook_post_dcs_uid
        FROM fact_facebook_post_consumptions_by_type_samples GROUP BY facebook_post_dcs_uid
        Limit 5 )
  SELECT facebook_post_dcs_uid ,  
  case when consumption_type = 'link clicks'  then consumptions_count end as link_clicks,
  case when consumption_type = 'photo view'  then consumptions_count end  as photo_view,
  case when consumption_type = 'video play' then consumptions_count end as video_play,
  case when consumption_type = 'other clicks' then consumptions_count end as other_clicks
  from fact_facebook_post_consumptions_by_type_samples 
  where facebook_post_dcs_uid IN (SELECT facebook_post_dcs_uid,
 facebook_post_dcs_uid from tbl );

