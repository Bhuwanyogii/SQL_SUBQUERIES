-- Q4. Find the highest rated movie among all movies whose number of votes are > the dataset avg votes

SELECT * FROM movies
WHERE score = (SELECT MAX(score) FROM movies 
				WHERE votes > (SELECT AVG(votes) FROM movies))