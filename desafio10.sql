SELECT pd.ProductName as 'Produto',
MIN(od.Quantity) as 'Mínima',
MAX(od.Quantity) as 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.order_details as od
INNER JOIN 
w3schools.products as pd ON pd.ProductID = od.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
