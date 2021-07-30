SELECT
CONCAT(FirstName, ' ', LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;
