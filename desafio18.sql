select
concat(emp.First_name, ' ', emp.Last_name) 'Nome completo',
date_format(histo.start_date, '%d/%m/%y') 'Data de início',
date_format(histo.end_date, '%d/%m/%y') 'Data de rescisão',
round(datediff(histo.end_date, histo.start_date)/ 365,2) 'Anos trabalhados'
from
hr.employees emp
inner join hr.job_history histo
on emp.employee_id = histo.employee_id
order by
concat(emp.First_name, ' ', emp.Last_name), round(datediff(histo.end_date, histo.start_date)/ 362,2);
