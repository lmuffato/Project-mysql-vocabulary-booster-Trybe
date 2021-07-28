select ucase(concat(e.FIRST_NAME, ' ', e.LAST_NAME)) as 'Nome completo',
h.START_DATE as 'Data de início',
e.SALARY as 'Salário'
from hr.job_history as h
inner join hr.employees as e on h.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.jobs as j on h.JOB_ID = j.JOB_ID
where month(h.START_DATE) between 1 and 3
order by concat(e.FIRST_NAME, ' ', e.LAST_NAME), j.JOB_TITLE;
