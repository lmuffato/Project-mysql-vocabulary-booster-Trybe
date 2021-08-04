select job_title as Cargo,
case when max_salary between 5000 and 10000 then 'Baixo'
when max_salary between 10001 and 20000 then 'Médio'
when max_salary between 20001 and 30000 then 'Alto'
when max_salary > 30000 then 'Altíssimo' end as 'Nível'        
from hr.jobs order by cargo asc;
 