-- write your queries here
SELECT * FROM owners JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(*) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY COUNT(*);


SELECT first_name, last_name, ROUND(AVG(price)) as avg_price FROM owners JOIN vehicles ON owners.id=vehicles.owner_id GROUP BY (first_name, last_name) HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;