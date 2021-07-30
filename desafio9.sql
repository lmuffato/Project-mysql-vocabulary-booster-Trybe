USE w3schools;
SELECT
CONCAT(EmplTab.FirstName, ' ', EmplTab.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM employees AS EmplTab
INNER JOIN orders AS OrdTab ON EmplTab.EmployeeID = OrdTab.EmployeeID
GROUP BY `Nome completo` ORDER BY COUNT(*);
