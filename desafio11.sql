SELECT *,
COUNT(`País`) AS `Número de compatriotas`
FROM (
  SELECT C1.ContactName AS `Nome`,
  C1.Country AS `País`
  FROM w3schools.customers AS C1, w3schools.customers AS C2
WHERE C1.Country = C2.Country AND C1.ContactName <> C2.ContactName
) AS `A`
GROUP BY `Nome`, `País`
ORDER BY `Nome`;

--Referência:
-- Correção erro GROUP BY teste encontrado na tread do slack: https://trybecourse.slack.com/archives/C01DJFH0DNW/p1621985643441600
