-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
SELECT
  ContactName AS `Nome`,
  Country AS `País`,
  (
    SELECT 
      COUNT(*) - 1
    FROM w3schools.customers
    WHERE c.Country = Country
  ) AS `Número de compatriotas`
FROM w3schools.customers AS c
ORDER BY ContactName ASC;
