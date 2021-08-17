select
concat(func1.first_name, '', func1.last_name) 'Nome completo funcionário 1',
func1.salary 'Salário funcionário 1',
func1.phone_number 'Telefone funcionário 1',
concat(func2.first_name, '', func2.last_name) 'Nome completo funcionário 2',
func2.salary 'Salário funcionário 2',
func2.phone_number 'Telefone funcionário 2'
from hr.employees func1
inner join hr.employees func2
on func1.job_id = func2.job_id
and func1.employee_id <> func2.employee_id
order by `Nome completo funcionário 1`, `Nome completo funcionário 2`;
