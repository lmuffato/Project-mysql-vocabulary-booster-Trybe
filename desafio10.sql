-- 10 - Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00
SELECT 
    p.ProductName Produto,
    MIN(od.Quantity) Mínima,
    MAX(od.Quantity) Máxima,
    ROUND(AVG(od.Quantity), 2) Média
FROM
    w3schools.order_details od
        INNER JOIN
    w3schools.products p ON p.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média , Produto;
