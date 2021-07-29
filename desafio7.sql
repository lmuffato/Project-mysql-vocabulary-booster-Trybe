SELECT UCASE(CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)) AS 'Nome completo', 
JH.START_DATE AS 'Data de início', E.SALARY AS 'Salário'
FROM hr.employees E
INNER JOIN hr.job_history JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID 
WHERE MONTH(JH.START_DATE) IN (1,2,3)  
ORDER BY `Nome completo`, `Data de início`;
