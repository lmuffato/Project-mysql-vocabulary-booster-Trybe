Select JOB_TITLE as 'Cargo', (MAX_SALARY - MIN_SALARY) as 'Diferença entre salários máximo e mínimo' from hr.jobs
order by `Diferença entre salários máximo e mínimo`, JOB_TITLE;
