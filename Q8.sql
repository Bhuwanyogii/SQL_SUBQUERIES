-- ***** Independent Subquery - Table Subquery(Multi Col Multi Row) *******

-- Q8. Find the most profitable movie of each YEAR

SELECT * FROM movies 
WHERE (year, gross-budget) IN (SELECT year, MAX(gross - budget) 
								FROM movies 
                                GROUP BY year)

