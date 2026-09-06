-- Q10. Find the highest grossing movies of top 5 actor/director combo in terms of total gross income

WITH top_duos AS(
	SELECT star, director, MAX(gross)
	FROM movies
	GROUP BY star, director
	ORDER BY SUM(gross) DESC LIMIT 5
)
SELECT * FROM movies 
WHERE (star, director, gross) IN (SELECT * FROM top_duos)