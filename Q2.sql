-- Q2. height profit movie
SELECT * FROM subquery_movie_dataset.movies;

SELECT * FROM movies WHERE (gross - budget) = (SELECT MAX(gross - budget) FROM movies);