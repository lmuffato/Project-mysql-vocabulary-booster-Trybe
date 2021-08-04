select job_title as Cargo, max_salary - MIN_SALARY as 'Diferença entre salários máximo e mínimo'        
from hr.jobs order by max_salary - MIN_SALARY, cargo;
