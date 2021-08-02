SELECT
    c.ContactName 'Nome de contato',
    s.ShipperName 'Empresa que fez o envio',
    o.OrderDate 'Data do pedido'
FROM
    w3schools.customers c
INNER JOIN
    w3schools.orders o
USING
    (CustomerID)
INNER JOIN
    w3schools.shippers s
ON
    o.ShipperID = s.ShipperID
WHERE
    s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY
    1, 2, 3;
