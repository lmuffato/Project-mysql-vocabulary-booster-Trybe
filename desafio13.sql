SELECT product.ProductName AS "Produto",
product.Price AS "Preço"
FROM w3schools.order_details AS details
INNER JOIN w3schools.products AS product ON details.ProductID = product.ProductID
WHERE Quantity > 80
ORDER BY product.ProductName;
