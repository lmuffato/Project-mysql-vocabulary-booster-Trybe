SELECT 
	t1.ContactName AS 'Nome',
    t1.Country AS 'País', 
    COUNT(t1.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS t1
JOIN w3schools.customers AS t2
ON t1.Country = t2.Country AND t1.ContactName NOT IN (t2.ContactName)
GROUP BY t1.ContactName, t2.Country
ORDER BY t1.ContactName;
