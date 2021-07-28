DELIMITER $$

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

CREATE PROCEDURE exibir_historico_completo_por_funcionario(
    IN email VARCHAR(300)
)
BEGIN
    SELECT
        CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
        d.DEPARTMENT_NAME AS `Departamento`,
        j.JOB_TITLE AS `Cargo`
    FROM
        employees AS e
    JOIN
        job_history AS jh
    ON
        jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    JOIN
        departments AS d
    ON
        jh.DEPARTMENT_ID = d.DEPARTMENT_ID
    JOIN
        jobs AS j
    ON
        j.JOB_ID = jh.JOB_ID
    WHERE
        e.EMAIL LIKE email
    ORDER BY
        d.DEPARTMENT_NAME ASC,
        j.JOB_TITLE ASC;
END $$

DELIMITER ;

CALL
    exibir_historico_completo_por_funcionario('NKOCHHAR');
