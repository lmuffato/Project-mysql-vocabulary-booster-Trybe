SELECT product.ProductName AS "Produto",
product.Price AS "Preço"
FROM w3schools.order_details AS det
INNER JOIN w3schools.products AS prod 
ON det.ProductID = prod.ProductID
WHERE Quantity > 80
ORDER BY product.ProductName;
