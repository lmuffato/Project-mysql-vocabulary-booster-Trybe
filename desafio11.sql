-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente

SELECT c1.ContactName `Nome`,
c1.Country `País`,
COUNT(c2.Country) `Número de compatriotas`
FROM w3schools.customers AS c1, w3schools.customers AS c2
WHERE c1.Country = c2.Country AND c1.ContactName <> c2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
