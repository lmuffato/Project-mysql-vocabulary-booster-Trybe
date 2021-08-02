-- 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe como parâmetro o nome de um cargo e em retorno deve mostrar a média salarial de todas as pessoas que possuem esse cargo

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo CHAR(25))
BEGIN
  SELECT
    ROUND(AVG(e.salary), 2) AS `Média salarial`
  FROM
    employees e
  INNER JOIN 
    jobs j 
  ON j.job_id = e.job_id
  WHERE
    j.job_title = cargo;
END $$

DELIMITER ;
