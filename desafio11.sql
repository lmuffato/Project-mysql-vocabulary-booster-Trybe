-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
SELECT c.ContactName AS `Nome`,
c.Country AS `País`,
COUNT(c.Country) AS `Número de compatriotas`
FROM w3schools.customers AS c, w3schools.customers AS c2
WHERE c.Country = c2.Country AND c.ContactName<>c2.ContactName -- a segunda verificação da diferença do ContactName fiz baseado no PR da Ana Ventura. 
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
