SELECT p.ProductName AS Produto,
p.Price AS Preço
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p ON p.ProductID=od.ProductID AND od.Quantity>80
GROUP BY od.ProductID
ORDER BY Produto;
