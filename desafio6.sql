SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)  AS 'Nome completo', 
  j.JOB_TITLE AS 'Cargo', 
  -- (SELECT JOB_TITLE AS 'Cargo' FROM jobs AS j WHERE j.JOB_ID = j_h.JOB_ID),
  j_h.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM job_history as j_h
INNER JOIN jobs as j
ON j_h.JOB_ID = j.JOB_ID
INNER JOIN employees as e
ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID
INNER JOIN departments as d
ON d.DEPARTMENT_ID = j_h.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
