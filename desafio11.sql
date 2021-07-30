SELECT
  ContactName AS 'Nome',
  c.Country AS 'País',
  (SELECT COUNT(cu.Country) FROM w3schools.customers AS cu WHERE cu.Country = c.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c
WHERE (SELECT COUNT(cu.Country) FROM w3schools.customers AS cu WHERE cu.Country = c.Country) > 1
ORDER BY Nome;
