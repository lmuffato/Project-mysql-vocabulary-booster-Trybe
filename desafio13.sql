SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS p, w3schools.order_details AS d
WHERE p.ProductID = d.ProductID AND d.Quantity > 80
ORDER BY ProductNamE ASC;
