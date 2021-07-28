SELECT A.ContactName AS 'Nome', A.Country AS 'País', COUNT(A.Country) AS 'Número de compatriotas'
FROM customers AS A, customers AS B
WHERE A.ContactName <> B.ContactName
AND A.Country = B.Country
GROUP BY A.ContactName, B.Country
ORDER BY `Nome` ASC;
