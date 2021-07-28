# 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo

USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(salary), 2) AS `Média salarial` FROM hr.employees e
    INNER JOIN hr.jobs j ON j.JOB_ID = e.JOB_ID
    WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
