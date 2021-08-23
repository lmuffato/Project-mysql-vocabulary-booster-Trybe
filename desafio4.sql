SELECT jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
CASE 
    WHEN ROUND(AVG(employees.SALARY))>=2000 AND ROUND(AVG(employees.SALARY))<=5800
    THEN 'Júnior'
    WHEN ROUND(AVG(employees.SALARY))>5800 AND ROUND(AVG(employees.SALARY))<=7500
    THEN 'Pleno'
    WHEN ROUND(AVG(employees.SALARY))>7500 AND ROUND(AVG(employees.SALARY))<=10500
    THEN 'Sênior'
    WHEN ROUND(AVG(employees.SALARY))>10500 THEN 'CEO'
    END AS 'Senioridade'
FROM hr.jobs AS jobs
INNER JOIN hr.employees AS employees
ON jobs.JOB_ID = employees.JOB_ID
GROUP BY Cargo
ORDER BY AVG(employees.SALARY), Cargo;
