SELECT compatriot.contactName AS `Nome`,
compatriot.country AS`País`,
COUNT(compatriot.country) AS `Número de compatriotas`
FROM w3schools.customers AS compatriot
JOIN w3schools.customers AS countries
ON compatriot.country = countries.country
AND compatriot.customerID <> countries.customerId
GROUP BY `Nome`, countries.country
ORDER BY `Nome`;
