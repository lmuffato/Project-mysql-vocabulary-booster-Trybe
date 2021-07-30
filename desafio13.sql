SELECT a.ProductName AS Produto,
a.Price AS Preço
FROM w3schools.products AS a
INNER JOIN w3schools.order_details AS b ON a.ProductID = b.ProductID
WHERE b.Quantity > 80
GROUP BY Quantity
ORDER BY Produto;
