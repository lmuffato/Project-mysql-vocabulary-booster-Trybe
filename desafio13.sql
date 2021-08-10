-- challenge;

SELECT ProductName AS Produto,
Price AS Preço
FROM w3schools.products AS products
INNER JOIN w3schools.order_details AS details_order
ON products.ProductID=details_order.ProductID
WHERE Quantity > 80
ORDER BY Produto;
