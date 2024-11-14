SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name, c.customer_id, COUNT(*) AS amount_of_movies
FROM rental r 
LEFT JOIN customer c ON r.customer_id = c.customer_id 
WHERE r.return_date IS NULL
GROUP BY c.customer_id
HAVING amount_of_movies > 1
ORDER BY amount_of_movies DESC;
