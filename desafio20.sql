USE hr;
DELIMITER $$ CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(15)) BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
  d.DEPARTMENT_NAME AS `Departamento`,
  j.JOB_TITLE AS `Cargo`
FROM hr.employees AS e
  INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
  INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY `Departamento` ASC,
  `Cargo` ASC;
END $$ DELIMITER;
