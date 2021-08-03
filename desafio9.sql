SELECT CONCAT(emp.First_Name, ' ', emp.Last_Name)  AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees as emp
INNER JOIN
w3schools.orders AS od ON emp.EmployeeID = od.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
