-- **** USING SUBQUERIES WITH *** SELECT *** **********

-- Q13. Get the percentage of votes for each movie compared to the total number of votes.

USE subquery_movie_dataset;

SELECT name, (votes/(SELECT SUM(votes) FROM movies))*100 FROM movies