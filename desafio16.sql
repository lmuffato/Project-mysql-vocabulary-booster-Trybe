-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA 
BEGIN
DECLARE result INT;
SELECT 
    COUNT(j.EMPLOYEE_ID)
FROM
    hr.job_history j
        INNER JOIN
    hr.employees e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO total_empregos;
RETURN result;
END $$
DELIMITER ;
