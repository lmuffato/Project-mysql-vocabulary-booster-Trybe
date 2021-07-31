-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80

SELECT 
  p.ProductName AS 'Produto',
  p.Price AS 'Preço'
FROM
  w3schools.products p
INNER JOIN
  w3schools.order_details d
ON p.ProductID = d.ProductID
WHERE d.Quantity > 80
ORDER BY 1;
