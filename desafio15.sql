DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT
    ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
    hr.employees AS e
INNER JOIN
	hr.jobs AS j
ON
	e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = cargo
GROUP BY e.JOB_ID;
END $$
DELIMITER ;
