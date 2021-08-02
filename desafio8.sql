SELECT
  c.ContactName AS 'Nome de contato',
  s.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM
  w3schools.orders o
  INNER JOIN w3schools.shippers s ON s.ShipperID = o.ShipperID
  INNER JOIN w3schools.customers c ON c.CustomerID = o.CustomerID
WHERE
  EXISTS (
    SELECT
      *
    FROM
      w3schools.customers c
    WHERE
      o.CustomerID = c.CustomerID
      AND o.ShipperID IN (1, 2)
  )
  ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
