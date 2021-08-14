USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(avg(t2.salary), 2) AS 'Média salarial'
    FROM hr.jobs AS t1
	INNER JOIN hr.employees AS t2
	ON t1.job_id = t2.job_id
    WHERE t1.job_title = cargo
	GROUP BY t1.job_title;
END $$

DELIMITER ;
