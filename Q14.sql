-- Q13. Display all movie names ,genre, score and avg(score) of genre

SELECT name, genre, score, (SELECT AVG(score) FROM movies m2 WHERE m2.genre = m1.genre) FROM movies m1