DELIMITER $$

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
	email VARCHAR(300)
)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE
        jobs_amount_by_employee INT;
	SELECT
		COUNT(jh.JOB_ID)
	FROM
		employees AS e
	JOIN
		job_history AS jh
	ON
		e.EMPLOYEE_ID = jh.EMPLOYEE_ID
	WHERE
		e.EMAIL LIKE email
    INTO
        jobs_amount_by_employee;
    RETURN
        jobs_amount_by_employee;
END $$

DELIMITER ;

SELECT
	buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
