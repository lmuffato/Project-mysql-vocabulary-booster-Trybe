SELECT 
  (SELECT CustomerName 
    FROM w3schools.customers AS C
    WHERE C.CustomerID = O.CustomerID) AS `Nome de Contato`,
  (SELECT ShipperName 
    FROM w3schools.shippers AS S
    WHERE S.ShipperID = O.ShipperID) AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
