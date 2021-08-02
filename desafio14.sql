SELECT c.Country AS 'País' FROM w3schools.customers c 
UNION SELECT s.Country As 'País' FROM w3schools.suppliers s
GROUP BY `País` ORDER BY `País`LIMIT 5;
