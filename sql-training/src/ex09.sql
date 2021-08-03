SELECT m.medium AS title_category, m.id AS brand_id, m.title AS brand_name, 
CAST( m.created_at AS date), cast (m.updated_at as date)
from movies m 
INNER JOIN movie_title_category_junctions mj ON mj.id = m.id
INNER JOIN title_categories tc ON tc.id = mj.id
WHERE m.medium = 'THEATRICAL'
;