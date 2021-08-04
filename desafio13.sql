/* 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
Exiba todos os produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.

Use o banco w3schools como referência

Monte uma query que exiba 02 colunas:

  A) A primeira deve possuir o alias "Produto" e exibir o nome do produto.
  B) A segunda deve possuir o alias "Preço" e exibir o preço desse produto.

Os resultados devem estar ordenados pelo nome do produto em ordem alfabética. */
SELECT
p.ProductName AS `Produto`,
p.Price AS `Preço`
FROM w3schools.products p
INNER JOIN w3schools.order_details d
ON p.ProductID = d.ProductID
WHERE d.Quantity > 80
ORDER BY `Produto`;
