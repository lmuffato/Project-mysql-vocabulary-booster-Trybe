SELECT ContactName AS `Nome`,
country.Country AS `País`,
(
SELECT COUNT(*)
FROM w3schools.customers AS `cm`
WHERE country.Country = `cm`.Country
AND `cm`.CustomerID != country.CustomerID
) AS `Número de compatriotas`
FROM w3schools.customers AS country
WHERE (
SELECT COUNT(*)
FROM w3schools.customers AS `cm`
WHERE country.Country = `cm`.Country
AND `cm`.CustomerID != country.CustomerID
) > 0
ORDER BY `Nome` ASC;
