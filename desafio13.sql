SELECT prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ord
ON ord.ProductId = prod.ProductID
WHERE ord.Quantity > 80
ORDER BY `Produto`;
