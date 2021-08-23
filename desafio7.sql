SELECT UPPER(CONCAT(empregados.FIRST_NAME,' ',empregados.LAST_NAME)) AS `Nome completo`,
historico_cargos.START_DATE AS `Data de início`,
empregados.SALARY AS `Salário`
FROM hr.employees AS empregados
INNER JOIN hr.job_history AS historico_cargos
Inner JOIN hr.jobs AS cargos
  ON empregados.EMPLOYEE_ID = historico_cargos.EMPLOYEE_ID AND cargos.JOB_ID = historico_cargos.JOB_ID
WHERE MONTH(historico_cargos.START_DATE) IN (1,2,3)
ORDER BY `Nome Completo` ASC, `Data de início` ASC;
