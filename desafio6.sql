SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)  AS 'Nome completo',
jt.JOB_TITLE AS 'Cargo',
st.START_DATE AS 'Data de início do cargo',
dn.DEPARTMENT_NAME AS 'Departamento'
FROM 
hr.job_history AS st
INNER JOIN 
hr.jobs AS jt ON jt.JOB_ID = st.JOB_ID
INNER JOIN 
hr.departments AS dn ON dn.DEPARTMENT_ID = st.DEPARTMENT_ID
INNER JOIN 
hr.employees AS emp ON emp.EMPLOYEE_ID = st.EMPLOYEE_ID 
ORDER BY `Nome completo` desc, JOB_TITLE ASC;
