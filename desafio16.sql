USE hr;
DELIMITER $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailValue VARCHAR(30)) RETURNS INT READS SQL DATA BEGIN   DECLARE qtd INT;
SELECT
    COUNT(*)   
FROM
    hr.employees AS e   
INNER JOIN
    hr.job_history AS jh 
        ON e.EMPLOYEE_ID=jh.EMPLOYEE_ID   
WHERE
    e.EMAIL=emailValue   
INTO
    qtd;
RETURN qtd; 
END $$  DELIMITER ;
