-- Q6. Find all the movies made by top 3 directors(in terms of total gross income)

USE subquery_movie_dataset;
 
WITH top_directors AS (SELECT director 
					FROM movies
					GROUP BY director 
                    ORDER BY SUM(gross) DESC 
                    LIMIT 3)
SELECT * FROM movies 
WHERE director IN (SELECT * FROM top_directors)