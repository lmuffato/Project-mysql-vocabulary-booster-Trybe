SELECT customers.ContactName AS "Nome de contato",
shippers.ShipperName AS "Empresa que fez o envio",
orders.OrderDate AS "Data do pedido"
FROM w3schools.orders as orders
INNER JOIN w3schools.customers AS customers ON orders.CustomerID = customers.CustomerID
INNER JOIN w3schools.shippers as shippers ON orders.ShipperID = shippers.ShipperID
WHERE shippers.ShipperName IN ("Speedy Express", "United Package")
ORDER BY customers.ContactName, shippers.ShipperName, orders.OrderDate;