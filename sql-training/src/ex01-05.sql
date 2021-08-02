-- Exercise 01
select count(distinct REPLACE(title, ' - DAR', '')) from movies;

-- Exercise 02
select count(1) from subscribers;

-- Exercise 03 
SELECT s.name AS "Subscriber Name", count(1) AS "User Count"
FROM subscribers s
INNER JOIN account_members am ON am.account_id = s.id
INNER JOIN users u ON u.id = am.user_id
WHERE s.name IN ('Adam Orfei', 'Drylogics', 'Michael Kors', 'ListenFirst Media')
GROUP BY s.name;

-- Exercise 04
SELECT  s.name AS "Subscriber_Name", count(s.active) AS "Active_User_Count" 
FROM subscribers s
INNER JOIN account_members am ON am.account_id = s.id
INNER JOIN users u ON u.id = am.user_id
WHERE (s.active = 'true' AND s.name IN ('Adam Orfei', 'Drylogics', 'Michael Kors', 'ListenFirst Media') )
GROUP BY s.name
ORDER BY s.name asc;


-- Exercise 05
SELECT DISTINCT m.title AS "Title", s.name AS "Subscriber_Name"
FROM movies m
INNER JOIN releases r on r.movie_id=m.id
INNER JOIN companies c on c.id=r.company_id
INNER JOIN companies_subscribers cs on c.id = cs.company_id
INNER JOIN subscribers s on s.id = cs.subscriber_id
INNER JOIN company_title_category_junctions cj ON cj.id = s.id
INNER JOIN movie_title_category_junctions mj ON mj.id = s.id
WHERE m.active AND s.name in ('Drylogics')
GROUP BY m.title, s.name;
