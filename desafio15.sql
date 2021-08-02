USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT
    t.Média as 'Média salarial'
  FROM
    (SELECT DISTINCT
      j.JOB_TITLE AS 'Cargo',
        ROUND(AVG(e.SALARY), 2) AS 'Média'
    FROM
      jobs AS j
        INNER JOIN
      employees AS e ON j.JOB_ID = e.JOB_ID
    GROUP BY j.JOB_TITLE) AS t
WHERE t.Cargo = cargo;
END $$

DELIMITER ;
