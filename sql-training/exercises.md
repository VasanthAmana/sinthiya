1) To find the number of titles in our database
2) To find the number of accounts in our database (hint: table - subscribers)
3) Group by Example: For finding the count of users for each of the given account
4) Find the total number of active users in each of the following accounts ('Adam Orfei', 'Drylogics', 'Michael Kors', 'ListenFirst Media')
5) Find the titles that have been given access to Drylogics Account (subscriber, companies, companies_subscribers, company_title_category_junctions, movie_title_category_junctions, movies)
6) In a single query result fetch movies titles along with all instagram users and pinterest data_source_uid for the movies with id 263721, 263716, 263715, 263714, 263713, 246674, 246662, 246616, 246604, 238278hint: movies, brand_pinterest_users, instagram_accounts  
7) In a single query result fetch movie titles along with all instagram users and pinterest datasourceuids for the movies with id 238947,223008,209677,204249,192312,179633,165454,156529,155917,154680 Ensure only one row per brand. ie.. 10 brands => 10 Rows in the result.
8) Find the top 20 latest brands that have more than 1 instagram account and at least 1 pinterest user.
9)  Select the movies that have the title_category THEATRICAL. The following columns should be selected in a single query brand_id, brand_name, created_at(Should be in format YYYY-MM-DD), updated_at(Should be in format YYYY-MM-DD), title Following tables are for the reference movies, movie_title_category_junctions, title_categories
10) In a single query find the latest consumption count for different types of consumptions. The fact_facebook_post_consumptions_by_type_samples is the table for reference.
11) In a single query find the latest consumption count for different types of consumptions. 
The fact_facebook_post_consumptions_by_type_samples is the table for reference.
