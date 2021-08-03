DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(50))
BEGIN
SELECT
  (
    SELECT ROUND(AVG(Salary), 2)
    FROM employees e
    WHERE j.JOB_ID = e.JOB_ID
  ) AS `Média salarial`
FROM jobs j
WHERE JOB_TITLE = Cargo;
END $$
DELIMITER ;
