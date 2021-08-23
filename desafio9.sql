SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos' FROM employees
INNER JOIN orders as o
ON o.EmployeeID = employees.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(*);
