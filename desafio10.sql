-- Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00

SELECT p.ProductName `Produto`,
MIN(d.Quantity) `Mínima`,
MAX(d.Quantity) `Máxima`,
ROUND(AVG(d.Quantity), 2) `Média`
FROM w3schools.order_details AS d
INNER JOIN w3schools.products AS p
ON p.ProductID = d.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
