SELECT CONCAT(empregados.FIRST_NAME,' ', empregados.LAST_NAME) AS `Nome completo`,
cargos.JOB_TITLE AS `Cargo`, historico_cargos.START_DATE AS `Data de início do cargo`,
DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS empregados
INNER JOIN hr.jobs AS cargos 
  ON empregados.JOB_ID = cargos.JOB_ID
INNER JOIN hr.job_history AS historico_cargos
  ON empregados.EMPLOYEE_ID = historico_cargos.EMPLOYEE_ID
INNER JOIN hr.departments AS departamento
  ON empregados.DEPARTMENT_ID = departamento.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
