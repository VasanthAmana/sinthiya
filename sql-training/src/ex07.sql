SELECT STRING_AGG (m.title, ';') as Brand, (m.id) id, pin.data_source_uid, STRING_AGG(ins.username, ';') as insta_user
  FROM movies m
  LEFT JOIN instagram_accounts ins on ins.movie_id = m.id
  LEFT JOIN brand_pinterest_users pin on pin.movie_id = m.id
  WHERE m.id in( 238947,223008,209677,204249,192312,179633,165454,156529,155917,154680)
group by m.id, m.title, pin.data_source_uid
;

