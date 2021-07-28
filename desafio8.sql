SELECT cust.ContactName AS 'Nome de Contato', 
ship.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do Pedido'
FROM w3schools.customers AS cust, w3schools.shippers AS ship, w3schools.orders AS ord
WHERE ord.CustomerID = cust.CustomerID AND ord.ShipperID = ship.ShipperID
ORDER BY cust.ContactName, ship.ShipperName, ord.OrderDate;
