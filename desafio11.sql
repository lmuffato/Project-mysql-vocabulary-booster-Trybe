SELECT 
t1.ContactName  AS Nome,
t1.Country AS País,
CASE
-- WHEN Country = 1 THEN 1
WHEN COUNT(t2.Country) = 1 THEN 1
ELSE COUNT(t2.Country) 
END AS 'Número de compatriotas'
FROM w3schools.customers AS t1
INNER JOIN w3schools.customers AS t2
ON t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID
GROUP BY 1, 2
ORDER BY 1;