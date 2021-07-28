SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
    COUNT(*) 'Total de pedidos'
FROM
    w3schools.orders o
        INNER JOIN
    w3schools.employees e ON o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID
ORDER BY `Total de pedidos`;
