USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs ON jobs.JOB_TITLE = job
AND jobs.JOB_ID = employees.JOB_ID
GROUP BY employees.JOB_ID;
END $$

DELIMITER ;
