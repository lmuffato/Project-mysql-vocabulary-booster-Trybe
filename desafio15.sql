DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN JOB_NAME VARCHAR(50))
BEGIN
SELECT
  ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
  hr.employees
WHERE
  JOB_ID IN (
    SELECT
      JOB_ID
    FROM
      hr.jobs
    WHERE
      JOB_TITLE = JOB_NAME
  );
END $$

DELIMITER ;
