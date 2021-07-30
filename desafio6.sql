USE hr;
SELECT
CONCAT(EmplTab.FIRST_NAME, ' ', EmplTab.LAST_NAME) AS 'Nome completo',
JobTab.JOB_TITLE AS 'Cargo',
HisTab.START_DATE AS 'Data de início do cargo',
DepTab.DEPARTMENT_NAME 'Departamento'
FROM employees AS EmplTab
INNER JOIN job_history AS HisTab ON EmplTab.EMPLOYEE_ID = HisTab.EMPLOYEE_ID
INNER JOIN jobs AS JobTab ON HisTab.JOB_ID = JobTab.JOB_ID
INNER JOIN departments AS DepTab ON HisTab.DEPARTMENT_ID = DepTab.DEPARTMENT_ID
ORDER BY CONCAT(EmplTab.FIRST_NAME, ' ', EmplTab.LAST_NAME) DESC, JobTab.JOB_TITLE;
