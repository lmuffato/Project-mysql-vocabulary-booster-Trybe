SELECT 
  c1.ContactName AS 'Nome',
  c1.Country AS 'País',
  (SELECT 
    COUNT(*)-1 
  FROM 
    w3schools.customers c2 
  WHERE 
    c2.Country LIKE c1.Country)
AS 'Número de compatriotas'
FROM w3schools.customers c1
ORDER BY `Nome`;
