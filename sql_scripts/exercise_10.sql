# List the top 10 actors based on the number of films they've appeared in.
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor_name, COUNT(*) AS amount_of_starred_movies
FROM actor a 
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name , a.actor_id 
ORDER BY amount_of_starred_movies DESC
LIMIT 10
