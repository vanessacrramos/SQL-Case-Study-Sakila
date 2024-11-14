# Check for duplicates in the actor table by actor name.
SELECT first_name, last_name, COUNT(*)
FROM actor 
GROUP BY first_name, last_name
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC
