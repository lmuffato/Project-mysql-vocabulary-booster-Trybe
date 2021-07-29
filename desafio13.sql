SELECT ProductName AS `Produto`, Price AS `Preço`
FROM w3schools.products
INNER JOIN w3schools.order_details ON w3schools.order_details.ProductID = w3schools.products.ProductID AND w3schools.order_details.Quantity > 80
ORDER BY `Produto`;
