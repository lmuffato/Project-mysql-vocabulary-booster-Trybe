-- Exiba os cargos com sua variação salarial e suas médias máxima e mínima mensal, considerando salários máximo e minímo como anuais

SELECT JOB_TITLE `Cargo`, 
MAX_SALARY - MIN_SALARY `Variação Salarial`,
ROUND(AVG(MIN_SALARY / 12), 2) `Média mínima mensal`,
ROUND(AVG(MAX_SALARY / 12), 2) `Média máxima mensal`
FROM hr.jobs
GROUP BY `Cargo`, `Variação Salarial`
ORDER BY `Variação Salarial` ASC, `Cargo`;
