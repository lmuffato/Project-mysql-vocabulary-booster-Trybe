select concat(e.FIRST_NAME, ' ', e.LAST_NAME) as 'Nome completo',
j.JOB_TITLE as Cargo,
h.START_DATE as 'Data de início do cargo',
d.DEPARTMENT_NAME as 'Departamento'
from hr.job_history as h
inner join hr.employees as e on h.EMPLOYEE_ID = e.EMPLOYEE_ID
inner join hr.jobs as j on h.JOB_ID = j.JOB_ID
inner join hr.departments as d on h.DEPARTMENT_ID = d.DEPARTMENT_ID
order by concat(e.FIRST_NAME, ' ', e.LAST_NAME) desc, Cargo;
