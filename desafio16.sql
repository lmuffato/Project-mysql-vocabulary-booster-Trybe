-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_Employee VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
  DECLARE quantity_jobs INT;
  SELECT COUNT(E.EMAIL) AS `qtd Empregos`
  FROM hr.employees E
  INNER JOIN hr.job_history JH
  ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
  WHERE E.EMAIL = email_Employee
  INTO quantity_jobs;
  RETURN quantity_jobs;
END $$

DELIMITER ;


