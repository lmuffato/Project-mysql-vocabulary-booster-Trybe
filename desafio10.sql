SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
