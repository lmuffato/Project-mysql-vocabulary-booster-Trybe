DELIMITER $$

DROP PROCEDURE IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

CREATE PROCEDURE buscar_media_por_cargo(
    IN job_title VARCHAR(300)
)
BEGIN
    SELECT
        ROUND(AVG(e.SALARY), 2) AS `Média salarial`
    FROM
        employees AS e
    JOIN
        jobs as j
    ON
        e.JOB_ID = j.JOB_ID
    WHERE
        j.JOB_TITLE LIKE job_title;
END $$

DELIMITER ;

CALL
    buscar_media_por_cargo('Programmer');
