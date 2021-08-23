SELECT product.ProductName AS 'Produto',
product.Price AS 'Preço'
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS product_order ON product.ProductID = product_order.ProductID
WHERE product_order.Quantity > 80
ORDER BY Produto;
