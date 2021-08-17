select
prod.productname Produto, prod.price Preço
from w3schools.products prod
inner join w3schools.order_details ordi
on ordi.ProductID = prod.ProductID
where ordi.Quantity > 80
order by prod.productname asc;