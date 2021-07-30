DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100)) BEGIN SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial' FROM employees AS e INNER JOIN jobs AS j ON j.job_id = e.job_id WHERE j.job_title = job_title; 
END $$ 

DELIMITER ;
