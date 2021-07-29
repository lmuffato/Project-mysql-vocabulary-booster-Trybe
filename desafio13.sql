-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT
  p.ProductName AS `Produto`,
  p.Price AS `Preço`
FROM w3schools.order_details AS d
INNER JOIN w3schools.products AS p
ON d.ProductID = p.ProductID
WHERE d.Quantity > 80
ORDER BY `Produto` ASC;
