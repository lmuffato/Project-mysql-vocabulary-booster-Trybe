SELECT JOB_TITLE AS 'Cargo',
MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
MAX_SALARY DIV 12 AS 'Média máxima mensal',
MIN_SALARY DIV 12 AS 'Média mínima mensal' 
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
