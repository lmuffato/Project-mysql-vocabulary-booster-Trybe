SELECT p.ProductName AS Produto, p.Price AS Preço
FROM w3schools.products AS p
LEFT JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY Produto;
