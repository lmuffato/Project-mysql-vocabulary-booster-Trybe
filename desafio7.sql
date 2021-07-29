-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
SELECT
  (
  SELECT 
      UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME))
    FROM hr.employees
    WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ) AS `Nome completo`,
  START_DATE AS `Data de início`,
  (
    SELECT
      SALARY
    FROM hr.employees
    WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
  ) AS `Salário`

FROM hr.job_history
WHERE JOB_ID IS NULL OR JOB_ID<>'' AND MONTH(START_DATE) IN (1, 2, 3) 
  ORDER BY `Nome completo` ASC, `Data de início` ASC;
