SELECT
  customers_1.ContactName AS 'Nome',
  customers_1.Country AS 'País',
  COUNT(customers_1.Country) - 1 AS 'Número de compatriotas'
FROM
  w3schools.customers AS customers_1,
  w3schools.customers AS customers_2
WHERE
  customers_1.Country = customers_2.Country
GROUP BY
  `Nome`,
  customers_1.Country
ORDER BY `Nome`;
