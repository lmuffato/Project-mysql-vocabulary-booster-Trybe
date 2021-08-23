SELECT CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME) AS 'Nome Completo',
employee_job.JOB_TITLE AS 'Cargo',
employee_history.START_DATE AS 'Data de início do cargo',
employee_department.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS employee
INNER JOIN hr.job_history AS employee_history
ON employee_history.EMPLOYEE_ID = employee.EMPLOYEE_ID
INNER JOIN hr.jobs AS employee_job
ON employee_history.JOB_ID = employee_job.JOB_ID
INNER JOIN hr.departments AS employee_department
ON employee_history.DEPARTMENT_ID = employee_department.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, job.JOB_TITLE;
