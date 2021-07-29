SELECT t1.ContactName AS `Nome`, t1.Country AS `País`, (
SELECT (COUNT(1) -1) FROM w3schools.customers WHERE t1.Country = Country
) AS `Número de compatriotas`
FROM w3schools.customers AS t1  WHERE (
SELECT (COUNT(1) -1) FROM w3schools.customers WHERE t1.Country = Country
) > 0 ORDER BY `Nome`;
