SELECT 
UCASE(CONCAT(EMP.first_name, ' ', EMP.last_name)) AS 'Nome completo',
JOBHIST.start_date AS 'Data de início',
EMP.salary AS 'Salário'
FROM hr.employees AS EMP
INNER JOIN hr.job_history AS JOBHIST
ON JOBHIST.employee_id = EMP.employee_id
WHERE MONTH(JOBHIST.start_date) IN (1, 2, 3)
ORDER BY CONCAT(EMP.first_name, ' ', EMP.last_name) ASC, JOBHIST.start_date ASC;
