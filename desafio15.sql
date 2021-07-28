USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN profissao VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS `Média Salarial`
FROM employees
WHERE JOB_ID IN(
SELECT JOB_ID
FROM jobs
WHERE JOB_TITLE=profissao
);
END $$

DELIMITER ;
