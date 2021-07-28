SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
job.JOB_TITLE AS 'Cargo', 
emp.HIRE_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS emp, hr.jobs AS job, hr.departments AS dep
WHERE emp.JOB_ID = job.JOB_ID AND dep.DEPARTMENT_ID = emp.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, job.JOB_TITLE;
