/* 16 Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario
no banco de dados hr que, ao receber o email de uma pessoa funcionária,
retorne a quantidade de empregos presentes em seu histórico */
USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade INT;
SELECT
    COUNT(his.JOB_ID)
  FROM
    hr.job_history AS his,
    hr.employees AS emp
  WHERE
    his.EMPLOYEE_ID = emp.EMPLOYEE_ID AND
    emp.EMAIL = email
INTO quantidade;
RETURN quantidade;  
END $$

DELIMITER;

-- SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
