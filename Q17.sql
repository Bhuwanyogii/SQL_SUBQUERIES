-- ***** Subquery In INSERT *****
 
-- Q17. Populate a already created loyal_users table with records of only those customers who have ordered food more than 3 times.

INSERT INTO loyal_users
(user_id, name)
SELECT t1.user_id,name
FROM orders t1
JOIN users t2 ON t1.user_id = t2.user_id
GROUP BY user_id, name
HAVING COUNT(*) > 3