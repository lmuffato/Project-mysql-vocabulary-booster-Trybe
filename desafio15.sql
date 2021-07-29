USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
	SELECT round(AVG(te.salary), 2) AS `Média salarial`
    FROM jobs AS tj
	INNER JOIN employees AS te
	WHERE tj.job_id = te.job_id AND cargo = tj.job_title;
END $$

DELIMITER ;
