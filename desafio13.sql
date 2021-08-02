SELECT 
    prod.ProductName AS "Produto", prod.Price AS "Preço"
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS odd ON prod.ProductID = odd.ProductID
WHERE
    odd.Quantity > 80
ORDER BY Produto;
