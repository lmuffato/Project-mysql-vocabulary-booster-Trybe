SELECT c.ContactName AS 'Nome', c.Country AS 'País', COUNT(c.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS cust
WHERE c.Country = cust.Country AND c.ContactName <> cust.ContactName
GROUP BY c.ContactName, cust.Country
ORDER BY c.ContactName;
