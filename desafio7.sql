SELECT UPPER(CONCAT(empregados.FIRST_NAME,' ',empregados.LAST_NAME)) AS `Nome Completo`,
historico_cargos.START_DATE AS `Data de início`,
empregados.SALARY AS `Salário`
FROM hr.employees AS empregados
INNER JOIN hr.job_history AS historico_cargos
  ON empregados.EMPLOYEE_ID = historico_cargos.EMPLOYEE_ID
WHERE MONTH(historico_cargos.START_DATE) IN (1,2,3)
ORDER BY `Nome Completo` DESC;
