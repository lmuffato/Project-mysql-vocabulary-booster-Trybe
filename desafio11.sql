select c.ContactName as Nome,
c.Country as País, count(qnt.Country) -1 as "Número de compatriotas"
from w3schools.customers as c, w3schools.customers as qnt
where c.Country = qnt.Country
group by c.ContactName, c.Country having count(qnt.Country) -1
order by Nome;
