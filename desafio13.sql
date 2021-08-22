SELECT products.ProductName AS `Produto`,
products.Price AS `Preço`
FROM w3schools.products products
INNER JOIN w3schools.order_details orders
    ON orders.ProductID = products.ProductID
WHERE orders.Quantity > 80
ORDER BY `Produto`;
