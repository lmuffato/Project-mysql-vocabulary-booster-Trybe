SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(ods.OrderID) AS 'Total de pedidos'
FROM
    w3schools.employees AS emp
        INNER JOIN
    w3schools.orders AS ods ON emp.EmployeeID = ods.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY `Total de pedidos`;
