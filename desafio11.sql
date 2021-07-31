-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
-- ref: https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/85/files

SELECT c1.ContactName AS `Nome`,
c1.Country AS `País`,
COUNT(c1.Country) AS `Número de compatriotas`
FROM
  w3schools.customers AS c1,
  w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c1.ContactName <> c2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
