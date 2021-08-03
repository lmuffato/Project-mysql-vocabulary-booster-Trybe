SELECT
    CONCAT(
    FirstName,
    ' ',
    LastName
    )
    'Nome completo',
    COUNT(1) 'Total de pedidos'
FROM
    w3schools.employees e
INNER JOIN
    w3schools.orders o
USING
    (EmployeeID)
GROUP BY
    1
ORDER BY
    2;
