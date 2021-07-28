SELECT p.ProductName AS 'Produto',
min(o.Quantity) AS 'Mínima',
max(o.Quantity) AS 'Máxima',
round(avg(o.Quantity),2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName
HAVING round(avg(o.Quantity),2) > 20
ORDER BY round(avg(o.Quantity),2) ASC, p.ProductName ASC;
