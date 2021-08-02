USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT
ROUND(AVG(employees.salary), 2) AS `Média salarial`
FROM hr.employees AS employees
INNER JOIN
hr.jobs AS jobs
ON employees.job_id = jobs.job_id
GROUP BY job_title
HAVING job_title = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
