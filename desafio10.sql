SELECT 
    P.ProductName AS Produto,
    MIN(AD.Quantity) AS Mínima,
    MAX(AD.Quantity) AS Máxima,
    ROUND(AVG(AD.Quantity), 2) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS AD
ON P.ProductID = AD.ProductID
GROUP BY AD.ProductID
HAVING Média > 20.00
ORDER BY 4, 1;
