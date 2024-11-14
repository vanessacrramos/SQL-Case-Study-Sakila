# Retrieve the first and last names of actors who starred in the movie *Poseidon Forever*.
SELECT a.first_name, a.last_name
FROM film f
INNER JOIN film_actor fa ON f. film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id 
WHERE f.title = 'POSEIDON FOREVER';
