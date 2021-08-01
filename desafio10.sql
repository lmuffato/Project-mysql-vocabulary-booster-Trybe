-- SELECT * FROM w3schools.order_details;
-- SELECT * FROM w3schools.products;

SELECT T1.ProductName AS `Produto`,
MIN(T2.Quantity) AS `Mínima`,
MAX(T2.Quantity) AS `Máxima`,
ROUND(AVG(T2.Quantity),2) AS `Média`
FROM w3schools.products AS T1
INNER JOIN w3schools.order_details AS T2 ON T2.ProductID = T1.ProductID
group by `Produto` HAVING `Média` > 20.00
ORDER BY `Média`, `Produto`;
