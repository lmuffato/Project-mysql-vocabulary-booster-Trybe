SELECT
tp.ProductName AS `Produto`,
MIN(tod.Quantity) AS `Mínima`,
MAX(tod.Quantity) AS `Máxima`,
ROUND(AVG(tod.Quantity), 2) AS `Média`
FROM w3schools.products AS tp
INNER JOIN w3schools.order_details AS tod
ON tod.ProductID = tp.ProductID
GROUP BY tp.ProductID
HAVING ROUND(AVG(tod.Quantity), 2) > 20.00
ORDER BY 4, 1;
