SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
t2.qtd AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN (SELECT (COUNT(*) -1) AS 'qtd', Country FROM w3schools.customers GROUP BY Country) AS t2
ON t2.Country = c.Country
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
