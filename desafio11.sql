-- 11 - Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente
SELECT 
    c1.ContactName Nome,
    c2.country País,
    COUNT(c2.Country) - 1 'Número de compatriotas'
FROM
    w3schools.customers c1,
    w3schools.customers c2
WHERE
    c1.Country = c2.Country
GROUP BY c1.ContactName , c1.Country
HAVING `Número de compatriotas` > 0
ORDER BY Nome ASC;
