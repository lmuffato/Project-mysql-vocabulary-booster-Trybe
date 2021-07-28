-- 19. Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano
-- no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem,
-- retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes varchar(2), ano varchar(4))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE quantity_of_people_hired DOUBLE;
SELECT COUNT(*) FROM employees
WHERE mes = MONTH(hire_date) AND ano = YEAR(hire_date)
INTO quantity_of_people_hired;
RETURN quantity_of_people_hired;
END $$
DELIMITER ;
