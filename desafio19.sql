DELIMITER $$

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
	_month INT,
    _year INT
)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE
        n_hired_employees INT;
	SELECT
		COUNT(e.EMPLOYEE_ID)
	FROM
		employees AS e
	WHERE
		MONTH(e.HIRE_DATE) = _month
        AND YEAR(e.HIRE_DATE) = _year
    INTO
        n_hired_employees;
    RETURN
        n_hired_employees;
END $$

DELIMITER ;

SELECT
	exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
