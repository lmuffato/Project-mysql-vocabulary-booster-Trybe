DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN nome_do_cargo CHAR(40))
BEGIN
  SELECT
  ROUND(AVG(salary), 2) AS `Média salarial`
  FROM employees AS e
  INNER JOIN jobs AS j ON j.job_id = e.job_id
  WHERE j.job_title = nome_do_cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('IT_PROG')
