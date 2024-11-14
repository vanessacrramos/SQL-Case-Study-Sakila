# Retrieve the list of films that are currently not in stock.
SELECT f.title 
FROM film f 
LEFT JOIN inventory i
ON f.film_id = i.film_id 
WHERE i.film_id IS NULL 
