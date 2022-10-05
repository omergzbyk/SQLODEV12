SELECT title, length FROM film
WHERE length > 
(
    SELECT AVG(length) 
    FROM film
);


SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = 
(
    SELECT MAX(rental_rate) 
    FROM film    
);

SELECT * FROM film
WHERE replacement_cost = 
(SELECT MIN(replacement_cost) FROM film)
AND
rental_rate = 
(SELECT MIN(rental_rate) FROM film);


SELECT customer_id, count(payment_id) FROM payment
GROUP BY customer_id
ORDER BY COUNT(payment_id) DESC, customer_id ASC;
