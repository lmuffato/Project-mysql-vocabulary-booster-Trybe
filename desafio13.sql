SELECT
tp.ProductName AS `Produto`,
tp.Price AS `Preço`
FROM w3schools.products AS tp
INNER JOIN w3schools.order_details AS tod
ON tod.ProductID = tp.ProductID 
WHERE tod.Quantity > 80
ORDER BY 1;
