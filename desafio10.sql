SELECT 
p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
round(AVG(od.Quantity) ,2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON p.ProductID = od.ProductID
GROUP BY p.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY round(AVG(od.Quantity) ,2) ASC, p.ProductName ASC;

-- Uso o HAVING ao invez do WHERE por causa do GROUP BY1104bia
