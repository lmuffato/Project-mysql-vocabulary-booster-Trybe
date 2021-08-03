SELECT 
	j.JOB_TITLE 'Cargo',
    j.MAX_SALARY - j.MIN_SALARY 'Variação Salarial',
    ROUND(MIN(j.MIN_SALARY DIV 12), 2) 'Média Mínima Mensal',
    ROUND(MAX(j.MIN_SALARY DIV 12), 2) 'Média Mínima Mensal'
FROM hr.jobs AS j
GROUP BY j.JOB_ID
ORDER BY 2, 1;
