SELECT p.productName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN
w3schools.order_details AS od
ON ((od.ProductID = p.ProductID))
GROUP BY p.ProductID
HAVING AVG(od.Quantity) > 20.00
ORDER BY AVG(od.Quantity) ASC, p.ProductName ASC;
