#Show the most rented movies by genre and the revenue generated from them.
WITH ranked_movies AS (
    SELECT 
        f.title, 
        c.name AS category_name, 
        SUM(p.amount) AS total_amount, 
        COUNT(*) AS rents, 
        DENSE_RANK() OVER (PARTITION BY c.name ORDER BY COUNT(*) DESC) AS movie_rank
    FROM category c 
    LEFT JOIN film_category fc ON c.category_id = fc.category_id 
    JOIN film f ON fc.film_id = f.film_id 
    JOIN inventory i ON f.film_id = i.film_id 
    JOIN rental r ON i.inventory_id = r.inventory_id 
    JOIN payment p ON r.rental_id = p.rental_id
    GROUP BY c.name, f.title
)
SELECT 
    title, 
    category_name, 
    total_amount, 
    rents
FROM ranked_movies
WHERE movie_rank = 1;
