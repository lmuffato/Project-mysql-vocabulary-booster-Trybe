SELECT ContactName AS 'Nome de contato',
ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
from w3schools.customers AS t1
INNER JOIN w3schools.orders AS t2
ON t1.CustomerID = t2.CustomerID
INNER JOIN w3schools.shippers AS t3
ON t2.ShipperID = t3.ShipperID
WHERE t3.ShipperID IN (1,2)
ORDER BY ContactName,ShipperName,OrderDate;
