/* 15 - Crie uma procedure chamada buscar_media_por_cargo que recebe
como parâmetro o nome de um cargo e em retorno deve mostrar a média
salarial de todas as pessoas que possuem esse cargo. */
USE hr;
DELIMITER $$

CREATE PROCEDURE
  buscar_media_por_cargo(
    IN nomeCargo VARCHAR(100)
  )
BEGIN
  SELECT
    ROUND(AVG(emp.SALARY), 2) AS `Média salarial`
  FROM
    employees AS emp,
    jobs AS job
  WHERE
    emp.JOB_ID = job.JOB_ID AND
    JOB_TITLE = nomeCargo
  GROUP BY JOB_TITLE;
END $$

DELIMITER;

-- CALL buscar_media_por_cargo("Programmer");
