SELECT CONCAT_WS(" ", FIRST_NAME, LAST_NAME) AS "Nome completo", 
jobs.JOB_TITLE AS Cargo,
DATE(START_DATE) AS "Data de início do cargo",
department.DEPARTMENT_NAME AS "Departamento"
FROM hr.job_history AS `history`
INNER JOIN hr.jobs AS jobs ON `history`.JOB_ID = jobs.JOB_ID
INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = `history`.EMPLOYEE_ID
INNER JOIN hr.departments AS department ON `history`.DEPARTMENT_ID = department.DEPARTMENT_ID
ORDER BY CONCAT_WS(" ", FIRST_NAME, LAST_NAME) DESC, Cargo ASC;
