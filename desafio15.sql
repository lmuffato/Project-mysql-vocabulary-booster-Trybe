USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(50))
BEGIN
	SELECT
	ROUND(AVG(emp.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS emp, hr.departments AS dep
WHERE dep.DEPARTMENT_ID = emp.DEPARTMENT_ID AND dep.DEPARTMENT_NAME = nome_cargo;
END $$;

DELIMITER ;
