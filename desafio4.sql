select  jobs.JOB_TITLE as Cargo , 
	  ROUND(avg(employees.salary),2) as 'Média salarial',
	  case
		  when ROUND(avg(employees.salary),2) 
      between '2000' and '5800' then 'Júnior'
		  when ROUND(avg(employees.salary),2) 
      between '5801' and '7500' then 'Pleno'
		  when ROUND(avg(employees.salary),2) 
      between '7501' and '10500' then 'Sênior'
		  else 'CEO'
	  end as 'Senioridade'
from hr.jobs as jobs
inner join hr.employees as employees
	on jobs.JOB_ID = employees.JOB_ID
group by jobs.JOB_TITLE
order by `Média salarial` ASC, Cargo ASC
