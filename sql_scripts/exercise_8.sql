# Identify cities with the highest and lowest average rental rates.
SELECT * FROM (
SELECT c.city, AVG(f.rental_rate) AS average_rental_rate, 'Highest' AS highest_or_lowest
FROM city c
JOIN address a ON c.city_id = a.city_id 
JOIN store s ON a.address_id = s.address_id
JOIN inventory i ON i.store_id = s.store_id 
JOIN film f ON f.film_id = i.film_id 
GROUP BY c.city_id, c.city
ORDER BY average_rental_rate DESC
LIMIT 1
)
UNION ALL 
SELECT * FROM (
SELECT c.city, AVG(f.rental_rate) AS average_rental_rate, 'Lowest' AS highest_or_lowest
FROM city c
JOIN address a ON c.city_id = a.city_id 
JOIN store s ON a.address_id = s.address_id
JOIN inventory i ON i.store_id = s.store_id 
JOIN film f ON f.film_id = i.film_id 
GROUP BY c.city_id, c.city
ORDER BY average_rental_rate
LIMIT 1
)
