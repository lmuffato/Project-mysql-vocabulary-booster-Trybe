SELECT concat(FirstName, ' ', LastName) AS 'Nome completo',
count(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o
ON o.EmployeeID = e.EmployeeID
group by `Nome completo`
ORDER BY `Total de pedidos`;
