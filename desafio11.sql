SELECT c1.ContactName as 'Nome',
c1.Country as 'País',
COUNT(c2.Country) -1 as 'Número de compatriotas'
FROM w3schools.customers as c1, w3schools.customers as c2
WHERE c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
HAVING `Número de compatriotas` <> 0
ORDER BY c1.ContactName;
