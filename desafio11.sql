USE w3schools;
SELECT
  customers_1.ContactName AS 'Nome',
  customers_1.Country AS 'País',
  COUNT(customers_1.Country) - 1 AS 'Número de compatriotas'
FROM
  customers AS customers_1,
  customers AS customers_2
WHERE
  customers_1.Country = customers_2.Country
GROUP BY
  `Nome`,
  customers_1.Country
ORDER BY
  `Nome`;
  