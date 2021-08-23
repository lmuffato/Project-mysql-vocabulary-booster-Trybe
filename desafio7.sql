SELECT UCASE(CONCAT(emp.FIRST_NAME , ' ' ,emp.LAST_NAME)) AS 'Nome completo',
HIRE_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON emp.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(his.START_DATE) IN (1, 2, 3)
ORDER BY UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)), his.START_DATE;
