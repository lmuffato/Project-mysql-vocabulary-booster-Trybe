SELECT CONCAT(empregados.FIRST_NAME,' ', empregados.LAST_NAME) AS `Nome completo`,
cargos.JOB_TITLE AS `Cargo`, historico_cargos.START_DATE AS `Data de início do cargo`,
DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS empregados
INNER JOIN hr.job_history AS historico_cargos
INNER JOIN hr.jobs AS cargos 
INNER JOIN hr.departments AS departamento
  ON empregados.EMPLOYEE_ID = historico_cargos.EMPLOYEE_ID AND historico_cargos.JOB_ID = cargos.JOB_ID AND historico_cargos.DEPARTMENT_ID = departamento.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
