USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
  DECLARE employee_id VARCHAR(10);
  SET employee_id = (SELECT e.EMPLOYEE_ID FROM hr.employees AS e WHERE e.EMAIL=email);
  SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) "Nome completo",
    d.DEPARTMENT_NAME "Departamento",
    jbs.JOB_TITLE "Cargo"
  FROM hr.job_history AS jh
  INNER JOIN hr.employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
  INNER JOIN hr.jobs jbs ON jbs.JOB_ID = jh.JOB_ID
  WHERE jh.EMPLOYEE_ID = employee_id
  ORDER BY 2 ASC, 3 ASC;
END $$
DELIMITER ;
