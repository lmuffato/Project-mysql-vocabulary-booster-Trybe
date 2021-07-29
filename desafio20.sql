DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN `email` VARCHAR(100))
BEGIN
  SELECT
    CONCAT(`employees`.FIRST_NAME, ' ', `employees`.LAST_NAME) AS `Nome completo`,
    `departments`.DEPARTMENT_NAME AS `Departamento`,
    `jobs`.JOB_TITLE AS `Cargo`
  FROM
    `hr`.employees AS `employees`
    INNER JOIN `hr`.job_history AS `job_history` ON `job_history`.EMPLOYEE_ID = `employees`.EMPLOYEE_ID
    INNER JOIN `hr`.departments AS `departments` ON `departments`.DEPARTMENT_ID = `job_history`.DEPARTMENT_ID
    INNER JOIN `hr`.jobs AS `jobs` ON `jobs`.JOB_ID = `job_history`.JOB_ID
  WHERE
    `employees`.EMAIL = `email`
  ORDER BY
    `Cargo` ASC;
END $$

DELIMITER ;
