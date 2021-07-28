-- 5. Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal,
-- considerando salários máximo e minímo como anuais
SELECT
job_title
AS 'Cargo',
(max_salary - min_salary)
AS 'Variação Salarial',
ROUND((min_salary / 12), 2)
AS 'Média mínima mensal',
ROUND((max_salary / 12), 2)
AS 'Média máxima mensal'
FROM
hr.jobs
ORDER BY (max_salary - min_salary) ASC, job_title ASC;
