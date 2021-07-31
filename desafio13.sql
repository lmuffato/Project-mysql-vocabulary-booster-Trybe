SELECT 
p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName ASC;

-- uso o INNER JOIN para pegar a coluna da qual quero fazer a comparação 
