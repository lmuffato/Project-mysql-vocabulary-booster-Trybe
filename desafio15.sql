USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN Cargo VARCHAR(35))
BEGIN
    SELECT ROUND(AVG(SUB.SALARY), 2) AS 'Média salarial'
    FROM
        (SELECT J.JOB_TITLE, E.SALARY AS SALARY FROM hr.employees AS E
    INNER JOIN hr.jobs AS J
    ON E.JOB_ID = J.JOB_ID
    HAVING J.JOB_TITLE = Cargo ) AS SUB;
END $$
DELIMITER ;
