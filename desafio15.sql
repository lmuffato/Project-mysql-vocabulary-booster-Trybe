USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(50)) BEGIN

SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE LIKE nome_cargo;

END;

DELIMITER ;
