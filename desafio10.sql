SELECT 
    pro.ProductName AS 'Produto',
    MIN(ord_d.Quantity) AS 'Mínima',
    MAX(ord_d.Quantity) AS 'Máxima',
    ROUND(AVG(ord_d.Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS ord_d
        INNER JOIN
    w3schools.products AS pro ON ord_d.ProductID = pro.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média ASC , Produto ASC;
