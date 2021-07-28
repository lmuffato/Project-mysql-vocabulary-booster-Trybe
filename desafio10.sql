SELECT 
    p.ProductName AS Produto,
    MIN(ordDetails.Quantity) AS Mínima,
    MAX(ordDetails.Quantity) AS Máxima,
    ROUND(AVG(ordDetails.Quantity), 2) AS Média
FROM
    w3schools.products AS p
    INNER JOIN w3schools.order_details AS ordDetails
    ON p.ProductID = ordDetails.ProductID
    GROUP BY p.ProductID
    HAVING Média > 20
    ORDER BY Média, Produto;
