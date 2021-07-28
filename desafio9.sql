SELECT CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS O
INNER JOIN w3schools.employees AS E
ON O.EmployeeID=E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(*);