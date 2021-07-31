SELECT products.ProductName AS 'Produto',
products.Price AS 'Preço'
FROM products AS products
INNER JOIN order_details AS order_details
WHERE products.ProductID = order_details.ProductID AND order_details.Quantity > 80
ORDER BY `Produto`;
