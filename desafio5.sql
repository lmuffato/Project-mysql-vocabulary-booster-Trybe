SELECT 
	JOB_TITLE 'Cargo',
    (MAX_SALARY - MIN_SALARY) 'Variação Salarial',
    ROUND(MIN(MIN_SALARY DIV 12), 2) 'Média Mínima Mensal',
    ROUND(MAX(MIN_SALARY DIV 12), 2) 'Média Mínima Mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY 2, 1;
