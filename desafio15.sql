-- 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo
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
