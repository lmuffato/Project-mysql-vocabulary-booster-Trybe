-- Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo

SELECT job.JOB_TITLE `Cargo`, ROUND(AVG(employee.SALARY), 2) `Média salarial`,
CASE
WHEN ROUND(AVG(employee.SALARY), 2) >= 2000 AND ROUND(AVG(employee.SALARY), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(employee.SALARY), 2) >= 5801 AND ROUND(AVG(employee.SALARY), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(employee.SALARY), 2) >= 7501 AND ROUND(AVG(employee.SALARY), 2) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS `Senioridade`
FROM hr.jobs AS job
INNER JOIN hr.employees AS employee
ON job.JOB_ID = employee.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` ASC, `Cargo` ASC;
