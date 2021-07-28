SELECT 
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS ord
ON e.EmployeeID = ord.EmployeeID 
GROUP BY 1
ORDER BY 2;
