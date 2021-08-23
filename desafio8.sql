SELECT
customers.ContactName `Nome de contato`,
shippers.ShipperName `Empresa que fez o envio`,
orders.OrderDate `Data do pedido`
FROM w3schools.orders orders
INNER JOIN w3schools.customers customers ON orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers shippers ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName IN ("Speedy Express", "United Package")
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate;
