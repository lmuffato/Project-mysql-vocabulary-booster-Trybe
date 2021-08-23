SELECT ProductName AS 'Produto', Price AS 'Preço' FROM products AS p
WHERE EXISTS (
SELECT * FROM order_details
WHERE p.ProductID = order_details.ProductID AND order_details.Quantity > 80)
ORDER BY ProductName;
