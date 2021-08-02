SELECT ContactName AS 'Nome',
Country AS 'País',
MAX(Country-1) AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY Country
ORDER BY ContactName;
