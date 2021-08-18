/* 13 - Exibe todos produtos que já tiveram um pedido associado requerindo
uma quantidade desse produto maior que 80. */
SELECT
  pro.ProductName AS `Produto`,
  pro.Price AS `Preço`
FROM
  w3schools.order_details AS odt,
  w3schools.products AS pro
WHERE
  pro.ProductID = odt.ProductID AND
  Quantity > 80
ORDER BY
  `Produto` ASC;
