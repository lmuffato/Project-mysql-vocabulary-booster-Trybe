SELECT  
UCASE(CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME))  AS `Nome completo`,
H.START_DATE AS `Data de início`,
A.SALARY AS 'Salário'
FROM hr.employees AS A
INNER JOIN hr.jobs AS J
ON A.JOB_ID = J.JOB_ID
INNER JOIN hr.job_history AS H
ON A.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) IN (1,2,3)
ORDER BY `Nome completo` ASC,`Data de início` ASC;
