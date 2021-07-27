SELECT c1.contactName AS `Nome`,
c1.country AS`País`,
COUNT(c1.country) AS `Número de compatriotas`
FROM w3schools.customers AS c1
JOIN w3schools.customers AS c2
ON c1.country = c2.country
AND c1.customerID <> c2.customerId
GROUP BY `Nome`, c2.country
ORDER BY `Nome`;
