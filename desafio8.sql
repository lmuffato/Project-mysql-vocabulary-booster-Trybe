select
wcustomers.contactname 'Nome de contato',
wshippers.ShipperName 'Empresa que fez o envio',
wOrders.OrderDate `Data do pedido`
from 
w3schools.customers wcustomers
inner join w3schools.orders wOrders
on wcustomers.CustomerID = wOrders.CustomerID
inner join w3schools.shippers wshippers
on wOrders.ShipperID = wshippers.ShipperID
and wshippers.ShipperID in (1,2)
order by contactname asc, wshippers.ShipperName, wOrders.OrderDate asc;
