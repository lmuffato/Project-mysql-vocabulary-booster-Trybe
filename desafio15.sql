USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
	FROM hr.employees
	WHERE job_id IN (SELECT job_id FROM jobs WHERE job_title = nome_cargo);
END $$

DELIMITER ;
