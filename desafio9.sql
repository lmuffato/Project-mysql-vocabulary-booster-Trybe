SELECT CONCAT(em.FirstName, ' ', em.LastName) AS 'Nome Completo', 
COUNT(ord.EmployeeID)  AS 'Total de pedidos'
FROM w3schools.employees AS em
INNER JOIN w3schools.orders AS ord
ON em.EmployeeID = ord.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
