USE hr;
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(255)) BEGIN SELECT CAST(AVG(empl.SALARY) AS DECIMAL(10, 2)) AS `Média salarial` FROM employees AS empl INNER JOIN jobs AS jo ON empl.JOB_ID = jo.JOB_ID WHERE jo.JOB_TITLE = job;
END $$ DELIMITER ;