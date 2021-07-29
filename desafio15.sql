CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(SALARY),2) AS `Média salarial`
  FROM hr.employees
  WHERE JOB_ID = (SELECT JOB_ID FROM hr.jobs WHERE JOB_TITLE = nome_do_cargo);
END
