SELECT
  (SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) 
    FROM hr.employees AS E
    WHERE E.EMPLOYEE_ID = H.EMPLOYEE_ID) AS 'Nome completo',
  (SELECT JOB_TITLE FROM hr.jobs AS J
    WHERE J.JOB_ID = H.JOB_ID) AS Cargo,
  START_DATE AS 'Data de início do cargo',
  (SELECT DEPARTMENT_NAME FROM hr.departments AS D
    WHERE D.DEPARTMENT_ID = H.DEPARTMENT_ID) AS Departamento
FROM hr.job_history AS H
WHERE EMPLOYEE_ID <> 0
ORDER BY `Nome completo` DESC, Cargo ASC;
