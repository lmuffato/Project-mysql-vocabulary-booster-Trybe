USE hr
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN CARGO VARCHAR(50))
  BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
    FROM hr.employees
    GROUP BY JOB_ID
    HAVING JOB_ID = (
      SELECT JOB_ID
      FROM hr.jobs
      WHERE JOB_TITLE = CARGO
    );
  END $$
  
DELIMITER ;
