SELECT 
	j.JOB_TITLE 'Cargo',
    j.MAX_SALARY - j.MIN_SALARY 'Variação Salarial',
    ROUND(j.MIN_SALARY DIV 12, 2) 'Média Mínima Mensal',
    ROUND(j.MIN_SALARY DIV 12, 2) 'Média Mínima Mensal'
FROM hr.jobs AS j
ORDER BY 2, 1;
