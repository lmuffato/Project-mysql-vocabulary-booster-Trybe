SELECT
  t1.contactName AS `Nome`,
  t1.country AS `País`,
  COUNT(t1.country) AS `Número de compatriotas`
FROM w3schools.customers AS t1
JOIN w3schools.customers AS t2
ON t1.country = t2.country
AND t1.country <> t2.CustomerId
GROUP BY 1, t2.country
ORDER BY 1;
