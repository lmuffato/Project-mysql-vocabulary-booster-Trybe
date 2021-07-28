SELECT CONCAT(e.firstName, ' ' , e.lastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN 
w3schools.orders AS o 
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY COUNT(o.employeeID) ASC;
