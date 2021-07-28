select c.ContactName as 'Nome de contato',
s.ShipperName as 'Empresa que fez o envio',
o.OrderDate as 'Data do pedido'
from w3schools.orders as o
inner join w3schools.customers as c on o.CustomerID = c.CustomerID
inner join w3schools.shippers as s on o.ShipperID = s.ShipperID
where s.ShipperName like 'Speedy Express' or s.ShipperName like 'United Package'
order by c.ContactName, s.ShipperName, o.OrderDate;
