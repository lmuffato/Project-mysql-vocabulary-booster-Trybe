SELECT
  C1.ContactName AS 'Nome',
  C1.Country AS 'País',
  COUNT(*) AS 'Número de compatriotas'
FROM
  w3schools.customers AS C1,
  w3schools.customers AS C2
WHERE C1.Country = C2.Country
  AND C1.ContactName <> C2.ContactName
GROUP BY C1.ContactName, C1.Country
ORDER BY C1.ContactName;
