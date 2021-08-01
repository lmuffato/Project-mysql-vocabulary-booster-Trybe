SELECT 
	prod.ProductName AS 'Produto',
    prod.Price AS 'Preço'
FROM 
	w3schools.products AS prod, 
	w3schools.order_details AS od
WHERE od.ProductID = prod.ProductID
GROUP BY prod.ProductID
ORDER BY prod.ProductName;
