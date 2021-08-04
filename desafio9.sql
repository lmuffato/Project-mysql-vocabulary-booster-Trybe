SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees e
INNER JOIN w3schools.orders o
ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(*);
