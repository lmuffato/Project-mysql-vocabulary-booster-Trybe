SELECT ct.ContactName as 'Nome de contato',
si.ShipperName as 'Empresa que fez o envio',
od.OrderDate as 'Data do pedido'
FROM w3schools.orders as od
INNER JOIN
w3schools.customers as ct ON ct.CustomerID = od.CustomerID
INNER JOIN
w3schools.shippers as si ON si.ShipperID = od.ShipperID
WHERE si.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
