SELECT
(
  SELECT ContactName
  FROM w3schools.customers
  WHERE w3schools.orders.CustomerID = w3schools.customers.CustomerID
) AS `Nome de contato`,
(
  SELECT ShipperName
  FROM w3schools.shippers
  WHERE w3schools.orders.ShipperID = w3schools.shippers.ShipperID
) AS `Empresa que fez o envio`,
OrderDate AS `Data do pedido`
FROM w3schools.orders WHERE ShipperID IN (1,2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, OrderDate;
