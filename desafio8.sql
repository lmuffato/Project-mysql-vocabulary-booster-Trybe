SELECT
  cust.ContactName AS 'Nome de contato', 
  ship.ShipperName AS 'Empresa que fez o envio',
  ord.OrderDate AS 'Data do pedido'
FROM 
	w3schools.orders AS ord
	INNER JOIN w3schools.customers AS cust 
    ON ord.CustomerID = cust.CustomerID
	INNER JOIN w3schools.shippers AS ship 
    ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName = 'Speedy Express' or ship.ShipperName = 'United Package'
ORDER BY cust.ContactName, ship.ShipperName, ord.OrderDate;
