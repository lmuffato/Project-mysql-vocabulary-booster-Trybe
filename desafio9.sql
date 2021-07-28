SELECT CONCAT(t1.FirstName,' ', t1.LastName) AS `Nome completo`,
COUNT(t2.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS t1
INNER JOIN w3schools.orders AS t2
ON t2.EmployeeID = t1.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
