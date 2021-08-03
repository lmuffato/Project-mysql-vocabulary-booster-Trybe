DELIMITER $$
CREATE FUNCTION
`buscar_quantidade_de_empregos_por_funcionario`(email_EMPLOYEER VARCHAR(50))
RETURNS int READS SQL DATA
BEGIN
DECLARE quantidade INT;
SELECT
  (
    SELECT COUNT(EMPLOYEE_ID)
    FROM job_history j
    WHERE j.EMPLOYEE_ID = e.EMPLOYEE_ID
    GROUP BY EMPLOYEE_ID
  ) AS `Quantidade de emprego`
FROM employees e
WHERE EMAIL = email_EMPLOYEER
INTO quantidade;
RETURN quantidade;
END $$
DELIMITER ;
