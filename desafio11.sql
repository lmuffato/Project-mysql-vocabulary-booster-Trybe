SELECT
cust.contactName AS 'Nome',
cust.country AS 'País',
COUNT(cust.country) AS 'Número de compatriotas'
FROM w3schools.customers AS cust,
w3schools.customers AS cust2
WHERE cust.country = cust2.country AND cust.contactName<>cust2.contactName
GROUP BY cust.contactName, cust2.country
ORDER BY cust.contactName ASC;
