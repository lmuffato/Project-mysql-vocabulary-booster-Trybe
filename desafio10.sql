SELECT p.ProductName AS Produto, ROUND(AVG(od.Quantity),2) AS Média, MIN(od.quantity) AS Mínima, 
MAX(od.quantity) AS Máxima 
FROM w3schools.products AS p
INNER JOIN order_details AS od
ON p.ProductID=od.ProductID
GROUP BY ProductName
HAVING ROUND(AVG(od.Quantity),2) > 20
ORDER BY ROUND(AVG(od.Quantity),2), p.ProductName
;
