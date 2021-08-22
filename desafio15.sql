USE hr;
DELIMITER $$
CREATE PROCEDURE busca_media_por_cargo(IN job VARCHAR(200))
BEGIN
    SELECT AVG(func.SALARY) AS `Média salarial`
    WHERE jobs.JOB_TITLE = job
    FROM employees func
    INNER JOIN jobs jobs
      ON func.JOB_ID = jobs.JOB_ID
END $$
DELIMITER;