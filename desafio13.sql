SELECT
product.ProductName `Produto`,
product.Price `Preço`
FROM w3schools.order_details `details`
INNER JOIN w3schools.products `product` ON details.ProductID = product.ProductID
WHERE Quantity > 80
ORDER BY product.ProductName;
