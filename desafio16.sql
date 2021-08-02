USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
DECLARE EMAIL VARCHAR(50);
SELECT 
    COUNT(e.employee_id)
FROM
    hr.job_history
        INNER JOIN
    hr.employees AS e
WHERE
    job_history.employee_ID = e.employee_ID
        && e.email = 'NKOCHHAR' INTO EMAIL;
RETURN EMAIL;
END $$


SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR') DELIMITER
