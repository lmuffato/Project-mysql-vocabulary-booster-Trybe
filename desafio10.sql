select
prod.productname Produto,
min(ord.quantity) 'Mínima',
max(ord.quantity)'Máxima',
round(avg(ord.quantity),2)'Média'
from w3schools.products prod
inner join w3schools.order_details ord
on prod.productid = ord.productid
group by ord.productid
having avg(ord.quantity) > 20
order by round(avg(ord.quantity),2) asc, prod.productname asc;
