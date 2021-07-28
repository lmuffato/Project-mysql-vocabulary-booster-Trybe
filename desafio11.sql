SELECT
  C1.ContactName 'Nome',
  C1.Country 'País',
  COUNT(*) 'Número de compatriotas'
FROM
  w3schools.customers C1,
  w3schools.customers C2
WHERE C1.Country = C2.Country
  AND C1.ContactName <> C2.ContactName
GROUP BY C1.ContactName, C1.Country
ORDER BY C1.ContactName;
