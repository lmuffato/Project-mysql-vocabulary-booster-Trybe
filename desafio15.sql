USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(35))
BEGIN
 SELECT ROUND(AVG(employees.SALARY), 2) AS 'Média salarial'
FROM employees AS employees
INNER JOIN jobs AS jobs
WHERE jobs.JOB_ID = employees.JOB_ID
GROUP BY JOB_TITLE
HAVING JOB_TITLE = cargo;
END $$

DELIMITER ;
