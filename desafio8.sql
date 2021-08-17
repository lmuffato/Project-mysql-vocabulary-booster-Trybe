/* 8 Exibe todas as pessoas consumidoras cujos pedidos já foram enviados
pelas empresas "Speedy Express" ou "United Package". */
SELECT
  cus.ContactName AS `Nome de contato`,
  shi.ShipperName AS `Empresa que fez o envio`,
  ord.OrderDate AS `Data do pedido`
FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS ord
  ON cus.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS shi
  ON ord.ShipperID = shi.ShipperID
WHERE shi.ShipperName
  IN("Speedy Express","United Package")
ORDER BY
  `Nome de contato` ASC,
  `Empresa que fez o envio` ASC,
  `Data do pedido` ASC;
