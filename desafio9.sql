select
CONCAT(emp.firstname, ' ', emp.lastName) 'Nome completo',
count(ord.OrderID) 'Total de pedidos'
from 
w3schools.employees emp
inner join w3schools.orders ord
on emp.EmployeeID = ord.EmployeeID
group by emp.EmployeeID
order by count(ord.OrderID);
