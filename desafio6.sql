SELECT CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME) AS 'Nome completo',
  Jobs.JOB_TITLE AS 'Cargo',
  History.START_DATE AS 'Data de início do cargo',
  Departments.DEPARTMENT_NAME 'Departamento'
FROM hr.employees AS Employees
  INNER JOIN hr.job_history AS History ON Employees.EMPLOYEE_ID = History.EMPLOYEE_ID
  INNER JOIN hr.jobs AS Jobs ON History.JOB_ID = Jobs.JOB_ID
  INNER JOIN hr.departments AS Departments ON History.DEPARTMENT_ID = Departments.DEPARTMENT_ID
ORDER BY CONCAT(Employees.FIRST_NAME, ' ', Employees.LAST_NAME) DESC,
  Jobs.JOB_TITLE;