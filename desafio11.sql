SELECT cust.ContactName AS `Nome`, cust.Country AS `País`, COUNT(cust.Country) AS `Número de compatriotas` FROM w3schools.customers AS cust, w3schools.customers AS cust2 WHERE cust.Country = cust2.Country AND cust.ContactName <> cust2.ContactName GROUP BY cust.ContactName, cust2.Country ORDER BY `Nome`;
