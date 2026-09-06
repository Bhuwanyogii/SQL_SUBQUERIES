-- highest rated movie in year 1980

SELECT * FROM movies
WHERE year = 1980 AND score = (SELECT MAX(score) FROM movies WHERE year = 1980)