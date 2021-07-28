SELECT t1.JOB_TITLE AS Cargo,
ROUND((t1.MAX_SALARY - t1.MIN_SALARY), 2) AS 'Variação Salarial',
ROUND((t1.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
ROUND((t1.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs AS t1
ORDER BY ROUND((t1.MAX_SALARY - t1.MIN_SALARY), 2),
Cargo;
