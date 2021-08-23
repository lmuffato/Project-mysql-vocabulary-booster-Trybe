SELECT prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ords
ON ords.ProductId = prod.ProductID
WHERE ords.Quantity > 80
ORDER BY `Produto`;
