SELECT
p.ProductName AS `Produto`,
p.Price AS `Preço`
FROM order_details AS od
INNER JOIN products AS p ON od.ProductID = p.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
