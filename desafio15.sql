USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(35))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM employees AS e
INNER JOIN jobs AS j
WHERE j.job_id = e.job_id AND cargo = j.job_title;
END $$
DELIMITER ;
