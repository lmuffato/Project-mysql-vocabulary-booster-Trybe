SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM employees AS e
INNER JOIN orders as o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
