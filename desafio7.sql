SELECT CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME))  AS 'Nome completo',
st.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário'
FROM hr.job_history as st
INNER JOIN
hr.employees as emp ON emp.EMPLOYEE_ID = st.EMPLOYEE_ID
WHERE MONTH(st.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, 'Data de início' DESC;
