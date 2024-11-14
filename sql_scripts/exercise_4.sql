# Add a column to display rental rates increased by 10%.
SELECT film_id, rental_rate, rental_rate * 1.1 AS new_rental_rate
FROM film f;
