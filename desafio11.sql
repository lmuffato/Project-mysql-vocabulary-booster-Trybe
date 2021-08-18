/* 11 - Exibe todas as pessoas clientes que possuem compatriotas,
mostrando a quantidade de compatriotas para cada pessoa cliente */
SELECT
  cus1.ContactName AS `Nome`,
  cus1.Country AS `País`,
  (count(cus1.Country) - 1) AS `Número de compatriotas`
FROM
  w3schools.customers AS cus1,
  w3schools.customers AS cus2
WHERE
  cus1.Country = cus2.Country
GROUP BY
  cus1.ContactName, cus1.Country
HAVING
  `Número de compatriotas` > 0
ORDER BY `Nome`;
