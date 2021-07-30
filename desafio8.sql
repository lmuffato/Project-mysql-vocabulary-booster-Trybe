SELECT cust.ContactName AS 'Nome de contato', ship.ShipperName AS 'Empresa que fez o envio', orDATE.OrderDate AS 'Data do pedido'
FROM customers AS cust
INNER JOIN orders AS orDATE
ON cust.CustomerID = orDATE.CustomerID
INNER JOIN Shippers AS ship
ON orDATE.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY cust.ContactName ASC, ship.ShipperName ASC, orDATE.OrderDate ASC;
