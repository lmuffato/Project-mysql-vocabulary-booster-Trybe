USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
JOIN hr.jobs AS j
ON e.job_id = j.job_id
WHERE j.job_title = cargo
GROUP BY job_title;
END $$

DELIMITER ;
