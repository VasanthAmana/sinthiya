SELECT m.title, m.id, ins.username,count(ins.username) insta_count,
count (pin.data_source_uid) pin_uid_count
FROM movies m
LEFT JOIN instagram_accounts ins ON ins.movie_id = m.id
LEFT JOIN brand_pinterest_users pin ON pin.movie_id = m.id
GROUP BY m.id, ins.username
HAVING COUNT(ins.username) > 1 AND COUNT(pin.data_source_uid) > 1
;
