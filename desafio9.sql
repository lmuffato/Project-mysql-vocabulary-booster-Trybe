select concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
count(o.EmployeeID) as 'Total de pedidos'
from w3schools.orders as o
inner join w3schools.employees as e on o.EmployeeID = e.EmployeeID
group by e.EmployeeID
order by count(o.EmployeeID);
