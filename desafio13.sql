SELECT
    ProductName Produto,
    Price Preço
FROM
    w3schools.products p
INNER JOIN
    w3schools.order_details od
USING
    (ProductID)
WHERE
    od.Quantity > 80
ORDER BY
    1;
