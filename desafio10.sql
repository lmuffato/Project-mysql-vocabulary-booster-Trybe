SELECT t1.productName AS `Produto`,
ROUND(MIN(t2.quantity), 2) AS `Mínima`,
ROUND(MAX(t2.quantity), 2) AS `Máxima`,
ROUND(AVG(t2.quantity), 2) AS `Média`
FROM w3schools.products AS t1
INNER JOIN w3schools.order_details AS t2 ON t1.productID = t2.productID
GROUP BY t1.productID
HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
