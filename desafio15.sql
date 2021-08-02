USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
BEGIN
  SELECT ROUND(AVG(SALARY),2) 'Média salarial'
  FROM
    hr.employees AS E
  INNER JOIN
    hr.jobs AS J ON J.JOB_ID = E.JOB_ID
  WHERE JOB_TITLE = cargo;
END $$

DELIMITER;
