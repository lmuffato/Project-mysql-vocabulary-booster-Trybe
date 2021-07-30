SELECT
P.ProductName AS `Produto`,
MIN(O.Quantity) AS `Mínima`,
MAX(O.Quantity) AS `Máxima`,
ROUND(AVG(O.Quantity), 2)  AS `Média`
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
ON P.ProductID = O.ProductID
GROUP BY `Produto`
HAVING `Média` > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
