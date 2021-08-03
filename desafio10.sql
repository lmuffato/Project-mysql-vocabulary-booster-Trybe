SELECT
    ProductName Produto,
    MIN(od.Quantity) Mínima,
    MAX(od.Quantity) Máxima,
    ROUND(AVG(od.Quantity),2) Média
FROM
    w3schools.products p
INNER JOIN
    w3schools.order_details od
USING 
    (ProductID)
GROUP BY
    1
HAVING
    ROUND(AVG(od.Quantity),2) > 20.00
ORDER BY
    4, 1;
