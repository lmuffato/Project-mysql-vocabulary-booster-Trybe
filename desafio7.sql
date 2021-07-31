SELECT
CONCAT(first_name,' ',last_name) AS 'Nome completo',
jh.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM hr.employees AS e
RIGHT JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE)=1 OR MONTH(START_DATE)=2 OR MONTH(START_DATE)=3
ORDER BY `Nome completo`;
