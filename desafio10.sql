SELECT
	prod.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM products as prod, order_details as od
WHERE prod.ProductID = od.ProductID
GROUP BY prod.ProductID
ORDER BY ROUND(AVG(od.quantity), 2), prod.ProductName;
