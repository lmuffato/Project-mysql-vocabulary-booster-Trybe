
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_params VARCHAR(100))
BEGIN
  SELECT
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`, 
    D.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
  FROM hr.job_history AS JH
  JOIN hr.employees AS E
    ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    AND E.EMAIL = email_params
  JOIN hr.jobs AS J
    ON JH.JOB_ID = J.JOB_ID
  JOIN hr.departments AS D
    ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
