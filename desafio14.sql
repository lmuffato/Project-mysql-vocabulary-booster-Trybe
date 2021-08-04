SELECT DISTINCT c.Country AS 'País' FROM w3schools.customers AS c
INNER JOIN w3schools.suppliers AS s
ON s.Country = c.Country
ORDER BY País
LIMIT 5;
