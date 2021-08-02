-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
--        Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
--        Use o banco hr como referência
--        Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR"
USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailValue VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd INT;
  SELECT
    COUNT(*)
  FROM hr.employees AS e
  INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID=jh.EMPLOYEE_ID
  WHERE
	e.EMAIL=emailValue
  INTO qtd;
  RETURN qtd;
END $$

DELIMITER ;
