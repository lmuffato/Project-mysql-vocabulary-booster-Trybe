SELECT CONCAT(e.firstName,' ',e.lastName) AS 'Nome completo',
COUNT(orderID) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON e.employeeid = o.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
