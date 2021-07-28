DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
LEFT JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY JOB_TITLE
HAVING JOB_TITLE = cargo;
END $$

DELIMITER ;
