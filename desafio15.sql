USE hr;
DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(25))
BEGIN
	SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
	FROM hr.employees
	WHERE JOB_ID=(SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE=cargo);
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');