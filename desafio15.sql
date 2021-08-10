USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN 
SELECT ROUND(AVG(e.Salary), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.JOB_ID = e.JOB_ID AND j.JOB_TITLE = cargo
GROUP BY j.JOB_ID;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
