DELIMITER $ $ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30)) BEGIN
SELECT
  ROUND(AVG(salary), 2) 'Média salarial'
FROM
  hr.employees E
  INNER JOIN hr.jobs J ON J.job_id = E.job_id
WHERE
  JOB_TITLE = cargo;
END $ $ DELIMITER;
