/* 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.

Use o banco hr como referência

Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR" */
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT
COUNT(*)
FROM hr.employees e
INNER JOIN hr.job_history jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
