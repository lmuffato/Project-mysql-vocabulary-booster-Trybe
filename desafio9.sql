SELECT CONCAT(emp.firstName, ' ', emp.lastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS ord
JOIN w3schools.employees AS emp
ON emp.employeeId = ord.employeeId
GROUP BY ord.employeeId
ORDER BY `Total de pedidos`;
