SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM employees AS e
INNER JOIN orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY `Nome Completo`
ORDER BY COUNT(o.EmployeeID);
