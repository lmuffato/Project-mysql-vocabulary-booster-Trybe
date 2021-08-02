CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN 
	SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
    FROM hr.employees as e
    INNER JOIN hr.jobs as j
    ON e.job_id = j.job_id
    WHERE job = j.job_title;
END $$

DELIMITER ;