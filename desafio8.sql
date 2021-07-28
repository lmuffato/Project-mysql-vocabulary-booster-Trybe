SELECT cust.contactName AS 'Nome de contato',
shi.ShipperName AS 'Empresa que fez o envio',
ord.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cust
ON ord.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS shi
ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`
