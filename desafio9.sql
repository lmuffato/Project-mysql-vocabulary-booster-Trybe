SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Quantidade'
FROM w3schools.employees e
INNER JOIN orders o
ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Quantidade`
