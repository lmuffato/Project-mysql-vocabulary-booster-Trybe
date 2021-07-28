SELECT j.JOB_TITLE AS 'Cargo',
round(avg(e.SALARY),2) AS 'Média salarial',
CASE
WHEN round(avg(e.SALARY)) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN round(avg(e.SALARY)) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN round(avg(e.SALARY)) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial` ASC, `Cargo` ASC;
