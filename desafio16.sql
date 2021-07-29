-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_jobs INT;
  SELECT COUNT(*) FROM hr.job_history AS jobH
  INNER JOIN hr.employees AS e
  ON jobH.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.email = email INTO total_jobs;
  RETURN total_jobs;
END $$

DELIMITER ;
