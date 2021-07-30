SELECT 
  C.ContactName AS `Nome de contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
INNER JOIN w3schools.shippers AS S
ON C.CustomerID = O.CustomerID AND S.ShipperID = O.ShipperID and S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
