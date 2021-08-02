SELECT
    p.ProductName AS 'Produto',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM w3schools.products p
INNER JOIN w3schools.order_details o ON p.ProductID = o.ProductID
GROUP BY p.ProductName HAVING `Média` > 20 ORDER BY `Média`, `Produto`;
