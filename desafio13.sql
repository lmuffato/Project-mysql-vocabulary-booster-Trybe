select p.ProductName as Produto,
p.Price as 'Preço'
from w3schools.order_details as oD
inner join w3schools.products as p on oD.ProductID = p.ProductID
where oD.Quantity > 80
order by produto;
