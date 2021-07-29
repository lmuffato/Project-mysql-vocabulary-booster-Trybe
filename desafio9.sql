SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS "Nome completo",
    COUNT(orde.OrderID) AS "Total de pedidos"
FROM
    w3schools.employees AS emp
        INNER JOIN
    w3schools.orders AS orde
WHERE
    emp.EmployeeID = orde.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;