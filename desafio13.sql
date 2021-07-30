-- Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80

SELECT p.ProductName `Produto`,
p.Price `Preço`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
WHERE o.Quantity > 80
ORDER BY `Produto`;
