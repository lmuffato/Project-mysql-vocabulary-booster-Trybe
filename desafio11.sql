SELECT 
    c.ContactName AS Nome, 
    c.Country AS País, 
    (Sub.NP-1) AS 'Número de compatriotas'
FROM(
SELECT 
    Country, 
    COUNT(*) AS NP
FROM w3schools.customers 
GROUP BY (Country)) AS Sub
INNER JOIN w3schools.customers AS c
ON c.Country = Sub.Country
WHERE (NP - 1) > 0
ORDER BY Nome;
