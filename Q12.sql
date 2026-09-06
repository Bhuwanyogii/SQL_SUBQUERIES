-- Q12. Find the favorite food of each customer

USE zomato;
WITH fav_food AS(
	SELECT t2.user_id, name, f_name, COUNT(*) AS 'frequency' FROM users t1
	JOIN orders t2 ON t1.user_id = t2.user_id
	JOIN order_details t3 ON t2.order_id = t3.order_id
	JOIN food t4 ON t3.f_id = t4.f_id
	GROUP BY t2.user_id, t3.f_id, name, f_name
)

SELECT * FROM fav_food f1
WHERE frequency = (SELECT MAX(frequency) FROM fav_food f2 WHERE f2.user_id = f1.user_id)