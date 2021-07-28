SELECT CONCAT(e.FirstName,' ', e.LastName) AS 'Nome completo', COUNT(o.OrderID) AS 'Total de pedidos'FROM w3schools.employees AS e
INNER JOIN orders AS o
ON o.EmployeeID=e.EmployeeID
GROUP BY o.EmployeeID
HAVING COUNT(o.OrderID) >= 0
ORDER BY COUNT(o.OrderID)
;
