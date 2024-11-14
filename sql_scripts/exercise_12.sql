WITH rental_cte AS (
SELECT r.rental_id, r.rental_date, r.return_date, f.rental_duration, CASE 
        WHEN (julianday(r.return_date) - julianday(r.rental_date)) = f.rental_duration THEN 'On time'
        WHEN (julianday(r.return_date) - julianday(r.rental_date)) > f.rental_duration THEN 'Late'
        ELSE 'Early'
    END AS return_time
FROM rental r 
JOIN inventory i ON r.inventory_id = i.inventory_id 
JOIN film f ON i.film_id = f.film_id 
)

SELECT return_time, COUNT(*) AS amount_of_times
FROM rental_cte
GROUP BY return_time
ORDER BY amount_of_times DESC
