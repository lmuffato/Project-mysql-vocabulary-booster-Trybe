DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(50))
BEGIN 
SELECT  ROUND(AVG(em.SALARY), 2) AS 'Média salarial' 
FROM hr.employees AS em
INNER JOIN hr.jobs AS job
ON job.JOB_ID = em.JOB_ID 
GROUP BY job_title
HAVING job.job_title =  jobName;
END $$

CALL buscar_media_por_cargo('Programmer')

DELIMITER ;
