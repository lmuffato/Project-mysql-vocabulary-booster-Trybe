SELECT prod.ProductName AS 'Produto',
ROUND(MIN(ords.Quantity), 2) "Mínima", 
ROUND(MAX(ords.Quantity), 2) "Máxima",
ROUND(AVG(ords.Quantity), 2) "Média"
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS ords
ON ((ords.ProductID = prod.ProductID))
GROUP BY prod.ProductID
HAVING AVG(ords.Quantity) > 20.00
ORDER BY AVG(ords.Quantity) ASC, prod.ProductName ASC;
