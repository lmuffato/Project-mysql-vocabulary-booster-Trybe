SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
count(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS c2
WHERE c.Country = c2.Country and c.ContactName <> c2.ContactName
GROUP BY c.ContactName, c2.Country
ORDER BY c.ContactName;
