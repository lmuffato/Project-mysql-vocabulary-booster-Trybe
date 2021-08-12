SELECT ucase(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME))
AS 'Nome completo',
histo.start_date as 'Data de início',
emp.SALARY as Salário
from hr.employees as emp
INNER JOIN hr.job_history AS histo
on histo.employee_id = emp.employee_id
where month(histo.start_date) in (1,2,3)
ORDER BY 'Nome completo', 'Data de início'; 
