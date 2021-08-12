SELECT
ucase(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME))
AS 'Nome completo',
histo.start_date as 'Data de início',
emp.SALARY as Salário
from hr.employees emp
INNER JOIN hr.job_history histo
on histo.employee_id = emp.employee_id
where month(histo.start_date) in (1,2,3)
order by ucase(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)), histo.start_date;
