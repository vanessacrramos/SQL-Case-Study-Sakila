SELECT r.inventory_id, COUNT(*) AS number_of_rents
FROM rental r 
GROUP BY r.inventory_id 
ORDER BY number_of_rents DESC
