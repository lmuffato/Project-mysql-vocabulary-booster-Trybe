SELECT p.productName AS 'Produto', MIN(o.quantity) AS 'Mínima',
	MAX(o.quantity) AS 'Máxima',
    ROUND(AVG(o.quantity), 2) AS 'Média'
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p
ON p.productID = o.productID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
