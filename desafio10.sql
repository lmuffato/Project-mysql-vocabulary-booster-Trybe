SELECT p.productName AS `Produto`,
ROUND(MIN(od.quantity), 2) AS `Mínima`,
ROUND(MAX(od.quantity), 2) AS `Máxima`,
ROUND(AVG(od.quantity), 2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.productID = p.productID
GROUP BY p.productID
HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
