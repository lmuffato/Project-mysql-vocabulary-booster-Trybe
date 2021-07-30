SELECT
  c.ContactName AS 'Nome de contato',
  s.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM
  orders AS o
INNER JOIN
  customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN
  shippers s on s.ShipperID = o.ShipperID
WHERE 
  o.ShipperID = 1 OR o.ShipperID = 2
ORDER BY
  `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
