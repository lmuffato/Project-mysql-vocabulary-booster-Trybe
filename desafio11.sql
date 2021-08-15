SELECT 
cust1.ContactName 'Nome',
cust1.Country 'País',
(SELECT 
COUNT(*)
FROM
w3schools.customers cust2
WHERE
cust1.Country = cust2.Country
AND cust1.CustomerID <> cust2.CustomerID ) 'Número de compatriotas'
FROM
w3schools.customers cust1
GROUP BY cust1.ContactName, cust1.Country, `Número de compatriotas`
HAVING `Número de compatriotas` > 0
ORDER BY cust1.ContactName ASC;