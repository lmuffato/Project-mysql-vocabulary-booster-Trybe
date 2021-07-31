USE hr;
DELIMITER $$ 

CREATE PROCEDURE exibir_historico_completo_por_funcionario( IN email VARCHAR(100) )
BEGIN 
  SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    D.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
  FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH
  INNER JOIN hr.jobs AS J
  INNER JOIN hr.departments AS D
  ON E.EMAIL = email
  AND E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  AND JH.JOB_ID = J.JOB_ID 
  AND JH.DEPARTMENT_ID = D.DEPARTMENT_ID
  ORDER BY `Departamento` ASC, `Cargo` ASC;
END $$ 

DELIMITER ;
