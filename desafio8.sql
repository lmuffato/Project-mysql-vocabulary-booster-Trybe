SELECT customer.ContactName AS `Nome de contato`,
shipper.ShipperName AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS orders
ON orders.CustomerID = customer.CustomerID
INNER JOIN w3schools.shippers AS shipper
ON shipper.ShipperID = orders.ShipperID
AND shipper.shipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
