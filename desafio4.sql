Select JOB_TITLE as 'Cargo', round((avg(employees.SALARY)), 2) as 'Média salarial', case
when round((avg(employees.SALARY)), 2) between 2000 and 5800 then 'Júnior'
when round((avg(employees.SALARY)), 2) between 5801 and 7500 then 'Pleno'
when round((avg(employees.SALARY)), 2) between 7501 and 10500 then 'Sênior'
when round((avg(employees.SALARY)), 2) > 10500 then 'CEO'
end as 'Senioridade' from hr.jobs inner join hr.employees as employees
on jobs.JOB_ID = employees.JOB_ID  group by jobs.JOB_TITLE order by `Média salarial`, JOB_TITLE;
