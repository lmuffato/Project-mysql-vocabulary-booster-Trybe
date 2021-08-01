SELECT 
  cust.ContactName AS 'Nome de contato',
  ship.ShipperName AS 'Empresa que fez o envio',
  ord.OrderDate AS 'Data do pedido'
FROM 
  w3schools.orders ord
  INNER JOIN w3schools.customers AS cust ON cust.CustomerID = ord.CustomerID
  INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = ord.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
