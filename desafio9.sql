SELECT CONCAT(employee.firstName, ' ', employee.lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS orders
JOIN w3schools.employees AS employee
ON employee.employeeId = orders.employeeId
GROUP BY orders.employeeId
ORDER BY `Total de pedidos`;
