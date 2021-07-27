SELECT CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS o
JOIN w3schools.employees AS e
ON e.employeeId = o.employeeId
GROUP BY o.employeeId
ORDER BY `Total de pedidos`;
