USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
  SELECT
    t.Média 'Média salarial'
  FROM
    (SELECT DISTINCT
      j.JOB_TITLE AS 'Cargo',
        ROUND(AVG(emp.SALARY), 2) 'Média'
    FROM
      jobs AS j
        INNER JOIN
      employees emp ON j.JOB_ID = emp.JOB_ID
    GROUP BY j.JOB_TITLE) t
WHERE t.Cargo = cargo;
END $$

DELIMITER ;