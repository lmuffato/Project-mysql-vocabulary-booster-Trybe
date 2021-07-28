USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailInput VARCHAR(30))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  d.DEPARTMENT_NAME AS 'Departamento',
  j.JOB_TITLE AS 'Cargo'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j_h ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = j_h.DEPARTMENT_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = j_h.JOB_ID
WHERE e.EMAIL = emailInput
ORDER BY `Departamento`, Cargo;

END $$

DELIMITER ;
