-- ******** Subquery in DELETE *****

-- Q19. Delete all the customers record who have never ordered.

DELETE FROM users
WHERE NOT EXISTS (
    SELECT 1
    FROM orders
    WHERE orders.user_id = users.user_id
)