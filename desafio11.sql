SELECT
  ContactName AS `Nome`,
  Country AS `País`,
  (SELECT COUNT(C2.Country) FROM w3schools.customers AS C2
    WHERE C2.Country = C1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C1
ORDER BY `Nome`;
