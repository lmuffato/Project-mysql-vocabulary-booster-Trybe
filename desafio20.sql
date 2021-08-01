USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
  IN email VARCHAR(50)
)
BEGIN
  SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    (
      SELECT d.DEPARTMENT_NAME
      FROM departments AS d
      WHERE d.DEPARTMENT_ID = jh.DEPARTMENT_ID
    ) AS 'Departamento',
    (
      SELECT j.JOB_TITLE
      FROM jobs AS j
      WHERE j.JOB_ID = jh.JOB_ID
    ) AS 'Cargo'
  FROM job_history AS jh
  LEFT JOIN employees AS e
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email
  ORDER BY `Departamento`, `Cargo`;
  
END $$

DELIMITER ;
