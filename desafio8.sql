SELECT co.ContactName AS "Nome de contato", sh.ShipperName AS "Empresa que fez o envio", o.OrderDate AS "Data do pedido" FROM orders o
INNER JOIN shippers sh
ON sh.ShipperID = o.ShipperID
INNER JOIN customers co
ON co.CustomerID = o.CustomerID
HAVING sh.ShipperName in("Speedy Express", "United Package")
ORDER BY 1 ASC, 2 ASC, 3 ASC;
