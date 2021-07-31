USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(50))
BEGIN
SELECT ROUND(AVG(salary), 2) AS `Média salarial`
FROM hr.employees
WHERE job_id IN (
  SELECT job_id
  FROM jobs
  WHERE job_title = job_name
);
END $$

DELIMITER ;
