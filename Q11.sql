-- Q11. Find all the movies that have a rating higher than theraverage rating of movies in the same genre.

SELECT * FROM movies m1
WHERE score > (SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre)