select
CONCAT(emp.first_name, ' ',emp.last_Name) `Nome completo funcionário 1`,
emp.SALARY 'Salário funcionário 1',
emp.PHONE_NUMBER 'Telefone funcionário 1',
CONCAT(emp1.first_name, ' ',emp1.last_Name) `Nome completo funcinário 2`,
emp1.SALARY 'Salário funcionário 2',
emp1.PHONE_NUMBER 'Telefone funcionário 2'
from hr.employees emp
inner join hr.employees emp1
on emp.job_id = emp1.job_id
and emp.employee_id <> emp1.employee_id
order by `Salário funcionário 1`,`Telefone funcionário 2` ;
