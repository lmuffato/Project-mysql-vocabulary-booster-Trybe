-- SELECT * FROM w3schools.customers; -- COUNTRY

SELECT ContactName AS `Nome`,
Country AS `País`,
(SELECT COUNT(T1.Country) - 1
FROM w3schools.customers AS T1
WHERE T1.Country = T2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS T2
having `Número de compatriotas` <> 0
ORDER BY `Nome`;
