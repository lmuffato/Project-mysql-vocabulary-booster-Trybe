SELECT  
  (SELECT  ContactName
  FROM w3schools.customers AS C
  WHERE C.CustomerID = O.CustomerID) AS 'Nome de contato', 
  SH.ShipperName AS 'Empresa que fez o envio',
  OrderDate AS 'Data do pedido'
FROM w3schools.orders AS O
INNER JOIN w3schools.shippers AS SH
ON SH.ShipperID = O.ShipperID 
AND SH.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
