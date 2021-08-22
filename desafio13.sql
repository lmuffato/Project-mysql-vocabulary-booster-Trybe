SELECT
    products.ProductName AS Produto,
    products.Price AS Preço 
FROM
    w3schools.products AS products 
WHERE
    EXISTS (
        SELECT
            *   
        FROM
            w3schools.order_details AS orders   
        WHERE
            (
                products.ProductID = orders.ProductID
            ) 
            AND (
                orders.Quantity > 80
            ) 
    ) 
ORDER BY
    `Produto`;
