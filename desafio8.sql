/*SELECT 
  (SELECT CustomerName 
    FROM w3schools.customers AS C
    WHERE C.CustomerID = O.CustomerID) AS `Nome de Contato`,
  (SELECT ShipperName 
    FROM w3schools.shippers AS S
    WHERE S.ShipperID = O.ShipperID) AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
WHERE ShipperID IN (1, 3)
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;*/

SELECT 
  C.CustomerName AS `Nome de Contato`,
  S.ShipperName AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`    
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
INNER JOIN w3schools.shippers AS S
ON S.ShipperName IN ('Speedy Express', 'United Package') AND C.CustomerID = O.CustomerID AND S.ShipperID = O.ShipperID
ORDER BY `Nome de Contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
