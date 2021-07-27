SELECT p.productName AS `Produto`,
MIN(od.quantity) AS `Mínima`,
MAX(od.quantity) AS `Máxima`,
ROUND(AVG(od.quantity), 2) AS `Média`
FROM w3schools.products AS p
JOIN w3schools.order_details AS od
ON p.productId = od.productId
GROUP BY od.productId
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
