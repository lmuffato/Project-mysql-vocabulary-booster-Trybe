SELECT product.productName AS `Produto`,
MIN(orders.quantity) AS `Mínima`,
MAX(orders.quantity) AS `Máxima`,
ROUND(AVG(orders.quantity), 2) AS `Média`
FROM w3schools.products AS product
JOIN w3schools.order_details AS orders
ON product.productId = orders.productId
GROUP BY orders.productId
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
