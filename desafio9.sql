SELECT
    CONCAT(employee.firstName,
    ' ' ,
    employee.lastName) AS 'Nome completo',
    COUNT(orders.EmployeeID) AS 'Total de pedidos' 
FROM
    w3schools.employees AS employee 
INNER JOIN
    w3schools.orders AS orders 
        ON employee.EmployeeID = orders.EmployeeID 
GROUP BY
    employee.EmployeeID 
ORDER BY
    COUNT(orders.employeeID) ASC;
