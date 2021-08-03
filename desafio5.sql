SELECT 
tab1.JOB_TITLE AS 'Cargo', 
(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial', 
ROUND((AVG(MIN_SALARY)/12), 2) AS 'Média mínima mensal',
ROUND((AVG(MAX_SALARY)/12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS tab1
INNER JOIN hr.employees AS tab2
ON tab1.JOB_ID = tab2.JOB_ID
GROUP BY tab2.JOB_ID ORDER BY (MAX_SALARY - MIN_SALARY) ASC, tab1.JOB_TITLE;
