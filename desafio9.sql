SELECT CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
COUNT(o.orderID) AS `Total de pedidos`
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o 
ON o.employeeID = e.employeeID
GROUP BY e.employeeID
ORDER BY `Total de pedidos` ASC;
