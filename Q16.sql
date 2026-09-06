-- **** Usage with HAVING *********

-- Q16. Find genres having avg score > avg score of all the movies

USE subquery_movie_dataset;

SELECT genre, AVG(score)
FROM movies
GROUP BY genre
HAVING AVG(score) > (SELECT AVG(score) FROM movies)