SELECT pdt.ProductName AS 'Produto',
MIN(dtl.Quantity) AS 'Mínima',
MAX(dtl.Quantity) AS 'Máxima',
ROUND(AVG(dtl.Quantity), 2) AS 'Média'
FROM w3schools.products AS pdt
INNER JOIN 
w3schools.order_details AS dtl
ON 
pdt.ProductID = dtl.ProductID
GROUP BY `Produto`
HAVING `Média` > 20  
ORDER BY `Média`, `Produto`;
