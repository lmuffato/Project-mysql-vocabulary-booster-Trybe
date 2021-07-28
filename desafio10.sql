SELECT 
    ods.OrderID,
    prd.ProductName AS 'Produto',
    MIN(odt.Quantity) AS 'Mínima',
    MAX(odt.Quantity) AS 'Máxima',
    ROUND(AVG(odt.Quantity), 2) AS 'Média'
FROM
    w3schools.orders AS ods
        INNER JOIN
    w3schools.order_details AS odt ON ods.OrderID = odt.OrderID
        INNER JOIN
    w3schools.products AS prd ON odt.ProductID = prd.ProductID
GROUP BY odt.ProductID
HAVING `Média` > 20.00
ORDER BY `Média` ASC , `Produto` ASC;
