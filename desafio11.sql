SELECT
c1.contactName `Nome`,
c1.country `País`,
COUNT(c1.country) `Número de compatriotas`
FROM w3schools.customers `c1`
JOIN w3schools.customers `c2`
ON c1.country = c2.country
AND c1.customerID <> c2.customerId
GROUP BY 1, c2.country
ORDER BY 1;
