SELECT p.ProductName AS Produto,
p.Price AS Preço
FROM w3schools.products AS p
JOIN w3schools.order_details AS op
ON p.ProductID = op.ProductID AND op.Quantity > 80
ORDER BY `Produto`;
