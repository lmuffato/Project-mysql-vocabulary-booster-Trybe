# 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT
    CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.orders o
        INNER JOIN
    w3schools.employees e ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY COUNT(*);
