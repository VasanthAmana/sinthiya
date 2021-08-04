-- In a single query find the latest consumption count for different types of consumptions. 
-- The fact_facebook_post_consumptions_by_type_samples is the table for reference.

SELECT  f.consumption_type, f.consumptions_count , f.fact_ts
FROM fact_facebook_post_consumptions_by_type_samples f
INNER JOIN (
            SELECT consumption_type, max(fact_ts) AS date
            FROM fact_facebook_post_consumptions_by_type_samples 
            GROUP BY consumption_type
            ) fp ON f.consumption_type = fp.consumption_type AND  f.fact_ts = fp.date;
