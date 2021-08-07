-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- https://www.youtube.com/watch?v=AbDpZlmoTrI
USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email_funcionario VARCHAR(25))
BEGIN
SELECT
COUNT(*) AS `Quatidade_de_empregos`
FROM employees AS employees
INNER JOIN 
job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email_funcionario;
END $$

DELIMITER ;
