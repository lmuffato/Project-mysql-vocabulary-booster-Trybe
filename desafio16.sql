USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(150))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE jobs_qnt INT;
  SELECT COUNT(*) FROM hr.job_history jh
  INNER JOIN hr.employees e ON e.EMAIL = email
  WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID INTO jobs_qnt;
  RETURN jobs_qnt;
END $$

DELIMITER ;
