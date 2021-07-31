SELECT 
	prod.ProductName AS 'Produto',
    prod.Price AS 'Preço'
FROM products AS prod, order_details AS od
WHERE od.ProductID = prod.ProductID
GROUP BY prod.ProductID
ORDER BY prod.ProductName;
