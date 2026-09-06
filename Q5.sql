-- *****Independent Subquery - Row Subquery(One Col Multi Rows)*******

USE zomato;

-- Q5. Find all users who never ordered

SELECT * FROM users
WHERE user_id NOT IN (SELECT DISTINCT(user_id) FROM orders)
