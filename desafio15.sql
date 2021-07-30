USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(
	IN cargo VARCHAR(200)
)
BEGIN
	SELECT 
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS e
    INNER JOIN hr.jobs AS jb
    ON e.JOB_ID = jb.JOB_ID
    WHERE jb.JOB_TITLE = cargo
    GROUP BY jb.JOB_TITLE;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer')