/*SELECT 
  (SELECT ContactName 
    FROM w3schools.customers AS C
    WHERE C.CustomerID = O.CustomerID) AS `Nome de Contato`,
  (SELECT ShipperName 
    FROM w3schools.shippers AS S
    WHERE S.ShipperID = O.ShipperID) AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
WHERE ShipperID IN (1, 2)
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;*/

SELECT 
  C.ContactName AS `Nome de Contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
INNER JOIN w3schools.shippers AS S
ON C.CustomerID = O.CustomerID AND S.ShipperID = O.ShipperID and S.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
