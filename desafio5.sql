SELECT 
	JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(MIN(MIN_SALARY DIV 12), 2) AS 'Média Mínima Mensal',
    ROUND(MAX(MIN_SALARY DIV 12), 2) AS 'Média Mínima Mensal'
FROM hr.jobs
GROUP BY JOB_ID
ORDER BY 2, 1;
