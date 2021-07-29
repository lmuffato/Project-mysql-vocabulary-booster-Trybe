CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_do_funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_total_de_empregos INT;
  SELECT COUNT(EMPLOYEE_ID)
  FROM hr.job_history
  WHERE EMPLOYEE_ID = (SELECT EMPLOYEE_ID FROM hr.employees WHERE email_do_funcionario = EMAIL)
  INTO quantidade_total_de_empregos;
  RETURN quantidade_total_de_empregos;
END
