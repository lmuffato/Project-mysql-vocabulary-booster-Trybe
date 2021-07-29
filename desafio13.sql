-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT ProductName AS `Produto`,
Price AS `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
