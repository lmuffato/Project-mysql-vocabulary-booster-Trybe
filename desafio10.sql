SELECT P.ProductName AS 'Produto', MIN(OD.Quantity) AS 'Mínima', 
MAX(OD.Quantity) AS 'Máxima', ROUND(AVG(OD.Quantity),2) AS 'Média'
FROM w3schools.products P
INNER JOIN w3schools.order_details OD
ON P.ProductID = OD.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
