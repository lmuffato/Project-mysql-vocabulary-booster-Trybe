USE hr; 

DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100)) -- parâmetros
BEGIN
	SELECT round(AVG(e.SALARY),2) AS 'Média salarial'
    FROM hr.employees AS e
    INNER JOIN hr.jobs AS j
    ON e.JOB_ID = j.JOB_ID
    WHERE j.JOB_TITLE = cargo;
END $$ 
DELIMITER ; 

CALL buscar_media_por_cargo('Programmer');

-- como essa procedure tem apenas paramentro de entrada uso o IN
-- uso o inner join para comparar as tabelas
