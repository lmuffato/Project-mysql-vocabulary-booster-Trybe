DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(job VARCHAR(200))
BEGIN
    SELECT ROUND(AVG(func.SALARY), 2) AS `Média salarial`
    FROM hr.employees func
    INNER JOIN hr.jobs jobs
      ON func.JOB_ID = jobs.JOB_ID
    WHERE jobs.JOB_TITLE = job;
END $$
DELIMITER;
