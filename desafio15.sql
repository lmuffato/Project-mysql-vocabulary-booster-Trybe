USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM employees e
INNER JOIN jobs j ON j.JOB_ID = e.JOB_ID
WHERE cargo = j.JOB_TITLE;
END $$

DELIMITER ;
