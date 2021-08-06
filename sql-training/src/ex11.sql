-- Select a fact table and select a single post dcs_uid from the fact table. Get all the facts related to the dcs_uid. 
-- Generate deltas out of that. Deltas means the difference between the current and previous.

SELECT 
  facebook_page_dcs_uid, 
  fact_ts, 
  facebook_page_likes, 
  facebook_page_likes - coalesce (lag(facebook_page_likes) OVER (partition by facebook_page_dcs_uid ORDER BY fact_ts), 0) AS difference 
FROM fact_facebook_page_samples
order by facebook_page_dcs_uid,fact_ts 
limit 5;