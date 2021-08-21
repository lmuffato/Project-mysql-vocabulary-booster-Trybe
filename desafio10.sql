SELECT
    product.ProductName AS 'Produto',
    MIN(orders.Quantity) AS 'Mínima',
    MAX(orders.Quantity) AS 'Máxima',
    ROUND(AVG(orders.Quantity),
    2) AS 'Média' 
FROM
    w3schools.products AS product 
INNER JOIN
    w3schools.order_details AS orders 
        ON product.ProductID = orders.ProductID 
GROUP BY
    `Produto` 
HAVING
    `Média` > 20 
ORDER BY
    `Média`,
    `Produto`;
