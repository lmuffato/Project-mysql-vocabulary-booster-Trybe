SELECT c1.ContactName AS `Nome`,
c1.Country AS `País`,
COUNT(*) AS `Número de compatriotas`
FROM w3schools.customers AS c1
INNER JOIN w3schools.customers AS c2
ON c1.Country = c2.Country AND c1.CustomerID <> c2.CustomerID
GROUP BY `Nome`, `País`
ORDER BY `Nome` ASC;
