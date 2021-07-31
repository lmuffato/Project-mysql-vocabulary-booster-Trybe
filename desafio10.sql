SELECT pr.ProductName AS "Produto", round(min(od.Quantity), 2) AS Mínima, round(max(od.Quantity), 2) AS Máxima, 
round(avg(od.Quantity), 2) AS Média FROM order_details od
INNER JOIN products pr
ON od.ProductID = pr.ProductID
GROUP BY ProductName
HAVING Média > 20
ORDER BY 4 ASC, 1 ASC;
