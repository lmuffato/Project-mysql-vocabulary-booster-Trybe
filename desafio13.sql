SELECT p.ProductName AS Produto,
	p.price AS Preço
FROM products AS p
INNER JOIN order_details AS od
ON od.ProductID = p.ProductID
WHERE od.Quantity > 80.00
ORDER BY p.ProductName ASC;
