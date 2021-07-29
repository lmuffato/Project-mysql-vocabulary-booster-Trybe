-- 8 - Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package"
SELECT
  (
    SELECT
      ContactName
    FROM w3schools.customers
    WHERE o.CustomerID = CustomerID
  ) AS `Nome de contato`,
  (
    SELECT
      ShipperName
    FROM w3schools.shippers
    WHERE o.ShipperID = ShipperID
  ) AS `Empresa que fez o envio`,
  OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
WHERE ShipperID in (1, 2)
ORDER BY 
  `Nome de contato` ASC, 
  `Empresa que fez o envio` ASC,
  `Data do pedido` ASC;
