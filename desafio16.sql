-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- https://www.youtube.com/watch?v=AbDpZlmoTrI
-- https://stackoverflow.com/questions/26015160/deterministic-no-sql-or-reads-sql-data-in-its-declaration-and-binary-logging-i

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_funcionario VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT
COUNT(*) AS `Quatidade_de_empregos`
FROM employees AS employees
INNER JOIN 
job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email_funcionario
INTO resultado;
RETURN resultado;

END $$

DELIMITER ;
