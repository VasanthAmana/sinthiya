  SELECT m.title AS"Brand" ,m.id,pin.data_source_uid AS " Pinterent_uid", ins.username AS "Instagram UserName"
  FROM movies m
  LEFT JOIN instagram_accounts ins on ins.movie_id = m.id
  LEFT JOIN brand_pinterest_users pin on pin.movie_id = m.id
  WHERE m.id in(263721, 263716, 263715, 263714, 263713, 246674, 246662, 246616, 246604, 238278)
;
