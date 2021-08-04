SELECT
  c.ContactName AS `Nome`,
  c.Country AS `País`,
  COUNT(c.Country) AS `Número de compatriotas`
FROM w3schools.customers c, w3schools.customers c2
WHERE c.Country = c2.Country AND c.ContactName <> c2.ContactName
GROUP BY c.ContactName, c.Country
ORDER BY `Nome` ASC;
