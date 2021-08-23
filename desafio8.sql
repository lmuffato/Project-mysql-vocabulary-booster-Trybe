SELECT customer.ContactName AS 'Nome de contato',
shipper.ShipperName AS 'Empresa que fez o envio',
customer_order.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS customer
INNER JOIN w3schools.orders AS customer_order
ON customer.CustomerID = customer_order.CustomerID
INNER JOIN w3schools.shippers AS shipper
ON customer_order.ShipperID = shipper.ShipperID
WHERE shipper.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY customer.ContactName, shipper.ShipperName, customer_order.OrderDate;
