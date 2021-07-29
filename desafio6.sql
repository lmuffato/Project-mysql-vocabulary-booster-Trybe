-- 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
SELECT
  (
  SELECT 
      CONCAT(FIRST_NAME, ' ', LAST_NAME)
    FROM hr.employees
    WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ) AS `Nome completo`,
  (
    SELECT
      JOB_TITLE
    FROM hr.jobs
    WHERE hr.jobs.JOB_ID = hr.job_history.JOB_ID
  ) AS `Cargo`,
  START_DATE AS `Data de início do cargo`,
  (
    SELECT
      DEPARTMENT_NAME
    FROM hr.departments
    WHERE hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID
  ) AS `Departamento`
FROM hr.job_history
WHERE JOB_ID IS NULL OR JOB_ID<>''
ORDER BY `Nome completo` DESC, `Cargo` ASC;
