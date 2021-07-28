-- 15. Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro
-- o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas
-- que possuem esse cargo
USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo varchar(35))
BEGIN
SELECT ROUND(AVG(e.salary), 2)
AS "Média salarial"
FROM employees
AS e
INNER JOIN jobs
AS j
WHERE j.job_id = e.job_id AND cargo = j.job_title;
END $$
DELIMITER ;
