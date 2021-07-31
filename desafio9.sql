-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
--      Exiba todas as pessoas funcionárias que já realizaram algum pedido e o total dos pedidos feitos.
--      Use o banco w3schools como referência
--      Monte uma query que exiba 02 colunas:
--      A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
--      A segunda deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
--      Ordene seus resultados pelo total de pedidos em ordem crescente
SELECT
  CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
  (
    SELECT
      COUNT(*)
    FROM
      w3schools.orders
    WHERE
      EmployeeID = o.EmployeeID
  ) AS 'Total de pedidos'
FROM
  w3schools.order_details AS od
  INNER JOIN w3schools.orders AS o ON od.OrderID = o.OrderID
  INNER JOIN w3schools.employees AS e ON o.EmployeeID = e.EmployeeID
GROUP BY
  `Nome completo`,
  `Total de pedidos`
ORDER BY
  `Total de pedidos`;
