/* 20. Toda pessoa funcionária no banco hr possui um histórico completo de cargos.
Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario
que, dado o e-mail de uma pessoa funcionária, retorna todos os cargos em
seu histórico. */
USE hr;
DELIMITER $$

CREATE PROCEDURE
  exibir_historico_completo_por_funcionario(
    IN email VARCHAR(100)
  )
BEGIN
  SELECT
  CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
  dep.DEPARTMENT_NAME AS 'Departamento',
  job.JOB_TITLE AS 'Cargo'
FROM
  hr.employees AS emp
INNER JOIN hr.job_history AS his
  ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
  ON his.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
  ON his.DEPARTMENT_ID = dep.DEPARTMENT_ID
WHERE
  emp.EMAIL = email
ORDER BY
  `Departamento`, `Cargo`;
END $$

DELIMITER;

-- CALL exibir_historico_completo_por_funcionario("NKOCHHAR");
