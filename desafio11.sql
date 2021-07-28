SELECT ContactName AS 'Nome',
  Country AS 'País',
  (COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country
ORDER BY Nome ASC;
