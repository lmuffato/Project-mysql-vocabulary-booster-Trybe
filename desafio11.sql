SELECT
  ContactName AS `Nome`,
  Country AS `País`,
  (SELECT COUNT(C2.Country) FROM w3schools.customers AS C2
    WHERE C2.Country = C1.Country AND C1.CustomerID <> C2.CustomerID) AS `Número de compatriotas`
FROM w3schools.customers AS C1
WHERE EXISTS (
  SELECT C2.Country FROM w3schools.customers AS C2
  WHERE C2.Country = C1.Country AND C1.CustomerID <> C2.CustomerID
)
ORDER BY `Nome`;
