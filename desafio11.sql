SELECT t1.ContactName AS Nome,
       t1.Country AS País,
       Count(t2.Country) -1 AS 'Número de compatriotas'
 FROM w3schools.customers AS t1,
 w3schools.customers AS t2
 WHERE t1.Country = t2.Country
 GROUP BY t1.ContactName, t1.Country
 ORDER BY `Nome`;
 