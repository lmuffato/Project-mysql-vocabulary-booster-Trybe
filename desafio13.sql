SELECT p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM w3schools.products p
INNER JOIN w3schools.order_details od ON p.ProductID = od.ProductID
WHERE od.Quantity > 80 ORDER BY Produto;
