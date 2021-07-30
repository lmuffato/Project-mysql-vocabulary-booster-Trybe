USE w3schools;
SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
Count(*) AS `Total de pedidos`
FROM employees AS e
INNER JOIN orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
