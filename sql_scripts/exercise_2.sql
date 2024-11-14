SELECT c.first_name, c.last_name, c.email, SUM(p.amount) AS total_amount
FROM customer c 
INNER JOIN payment p ON p.customer_id = c.customer_id 
GROUP BY c.first_name, c.last_name, c.email 
ORDER BY total_amount DESC 
LIMIT 5
