SELECT t1.CustomerName AS `Nome`, t1.Country AS `País`, (
SELECT (COUNT(1) -1) FROM w3schools.customers WHERE t1.Country = Country) AS `Número de compatriotas`
FROM w3schools.customers AS t1 ORDER BY `Nome`;
