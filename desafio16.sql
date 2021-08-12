-- challenge 16;

USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailPar VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE emailPessoa VARCHAR(100);
  SELECT COUNT(*) FROM hr.employees AS employees
  INNER JOIN hr.job_history AS job_history
  ON employees.EMPLOYEE_ID=job_history.EMPLOYEE_ID
  WHERE EMAIL=emailPar
  INTO emailPessoa ;
  RETURN emailPessoa;
END $$

DELIMITER ;
