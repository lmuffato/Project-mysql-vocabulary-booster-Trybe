SELECT t1.ContactName AS Nome,
t1.Country AS País,
(SELECT COUNT(ContactName) FROM w3schools.customers
WHERE Country = País AND ContactName <> Nome) AS 'Número de compatriotas'
FROM w3schools.customers AS t1
ORDER BY Nome;
