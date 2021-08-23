DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN posicao VARCHAR(100))
BEGIN
	SELECT media AS 'Média salarial' FROM (
    SELECT j.job_title AS 'Cargo', CONVERT(AVG(e.salary), DECIMAL(10,2)) AS 'media'
	FROM employees AS e
	INNER JOIN jobs AS j
	ON e.job_id = j.job_id
	GROUP BY j.job_title) AS final
    WHERE final.Cargo = posicao;
END $$

DELIMITER ;
