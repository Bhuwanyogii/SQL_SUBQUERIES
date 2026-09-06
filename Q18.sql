-- ******* Subquery in UPDATE *****

-- Q18. Populate the money col of loyal_cutomer table using the orders table. Provide a 10% app money to all customers based on their order value.

UPDATE loyal_users 
SET money = (SELECT SUM(amount)*0.1 
			FROM orders 
            WHERE orders.user_id = loyal_users.user_id)