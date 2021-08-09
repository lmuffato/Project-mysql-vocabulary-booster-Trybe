select
	job_title as Cargo, 
	max_salary - MIN_SALARY as 'Variação Salarial',        
	round(y.min_salary/12,2) as 'Média mínima mensal',
	round(y.max_salary/12,2) as 'Média máxima mensal'
from hr.jobs as y
order by
	'Variação Salarial', cargo;