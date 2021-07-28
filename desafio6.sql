SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)  AS 'Nome completo', 
  j.JOB_TITLE AS 'Cargo', 
  HIRE_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM employees as e
INNER JOIN jobs as j
ON j.JOB_ID = e.JOB_ID
INNER JOIN departments as d
ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo`, `Cargo`;
