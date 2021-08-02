USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_emprego INT;
    
    SELECT COUNT(jh.EMPLOYEE_ID)
    FROM  hr.job_history  AS jh
    INNER JOIN hr.employees AS e
    ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL LIKE email 
    
    INTO quantidade_emprego;
    
    RETURN quantidade_emprego;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

-- uso INT pq retorno um numero inteiro e READS SQL DATA pq estou lendo dados do mysql
-- uso o inner join para comparar as tabelas e contar quantas vezes o jh.EMPLOYEE_ID se repete
-- uso o LIKE porque funcinoa melhor para VARCHAR('string') do que o =
