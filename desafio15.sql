DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN `Cargo` VARCHAR(35))
BEGIN
SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
WHERE j.job_id = e.job_id AND Cargo = j.job_title;
END $$
DELIMITER;
