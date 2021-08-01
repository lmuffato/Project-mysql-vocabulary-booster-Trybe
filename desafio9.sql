SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome Completo',
COUNT(OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS t1
INNER JOIN w3schools.orders AS t2
ON t1.EmployeeID = t2.EmployeeID
GROUP BY t1.EmployeeID
ORDER BY 2;
