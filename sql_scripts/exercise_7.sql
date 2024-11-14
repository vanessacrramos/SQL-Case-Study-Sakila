# Find films rented more than 30 times, showing the title and rental count.
SELECT f.title, COUNT(f.film_id) AS number_of_rents
FROM film f 
JOIN inventory i ON f.film_id = i.film_id 
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title 
HAVING number_of_rents > 30
ORDER BY number_of_rents DESC;
