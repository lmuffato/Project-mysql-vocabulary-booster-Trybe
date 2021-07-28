USE hr;
SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
CASE 
WHEN 'Média salarial' BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN 'Média salarial' BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN 'Média salarial' BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN 'Média salarial' > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM employees AS e
INNER JOIN jobs AS j
ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial` ASC, j.JOB_TITLE;
