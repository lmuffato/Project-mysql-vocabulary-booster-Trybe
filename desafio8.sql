SELECT
  DISTINCT c.ContactName AS 'Nome de contato',
  (
    SELECT s.ShipperName
    FROM w3schools.shippers AS s
    WHERE s.ShipperID = o.ShipperID
  ) AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
LEFT JOIN w3schools.orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.ShipperID IN (1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
