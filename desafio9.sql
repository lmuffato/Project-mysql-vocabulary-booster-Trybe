SELECT CONCAT(emp.firstName, ' ', emp.lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS ords
JOIN w3schools.employees AS emp
ON emp.employeeId = ords.employeeId
GROUP BY ords.employeeId
ORDER BY `Total de pedidos`;
