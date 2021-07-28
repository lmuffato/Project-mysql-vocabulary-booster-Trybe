SELECT concat(e.FirstName,' ',e.LastName) AS 'Nome completo',
count(o.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
GROUP BY concat(e.FirstName,' ',e.LastName)
ORDER BY `Total de pedidos` ASC;
