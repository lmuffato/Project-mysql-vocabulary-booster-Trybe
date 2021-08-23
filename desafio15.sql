DELIMITER //
CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(35)) BEGIN
SELECT
ROUND(AVG(e.salary), 2) `Média salarial`
FROM employees `e`
INNER JOIN jobs `j`
WHERE j.job_id = e.job_id AND cargo = j.job_title;
END //
DELIMITER ;