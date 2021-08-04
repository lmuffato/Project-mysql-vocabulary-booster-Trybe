SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
