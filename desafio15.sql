-- SELECT * FROM hr.jobs; -- JOB_ID
-- SELECT * FROM hr.employees; -- SALARY JOB_ID

-- SELECT ROUND(AVG(t1.SALARY),2) AS `Média salarial`
-- -- t2.JOB_TITLE AS `Cargo`
-- FROM hr.employees AS t1
-- inner join hr.jobs AS t2 on t1.JOB_ID = t2.JOB_ID
-- where t2.JOB_TITLE = 'Programmer';
-- -- group by t1.EMPLOYEE_ID;

USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN NOME_DO_CARGO VARCHAR(20))
BEGIN
    SELECT ROUND(AVG(T1.SALARY),2) AS `Média salarial` FROM hr.employees AS T1
    INNER JOIN hr.jobs AS T2 ON T1.JOB_ID = T2.JOB_ID
    WHERE T2.JOB_TITLE = NOME_DO_CARGO;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
