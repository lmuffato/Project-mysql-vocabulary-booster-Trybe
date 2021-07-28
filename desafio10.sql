select p.ProductName as Produto, 
min(oD.Quantity) as 'Mínima',
max(oD.Quantity) as 'Máxima',
round(avg(oD.Quantity),2) as 'Média'
from w3schools.order_details as oD
inner join w3schools.products as p on oD.ProductID = p.ProductID
group by oD.ProductID having round(avg(oD.Quantity),2) > 20.00
order by round(avg(oD.Quantity),2), Produto;
