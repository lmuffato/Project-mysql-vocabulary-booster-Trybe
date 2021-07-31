-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
-- Use o banco hr como referência

-- Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que, dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano. Confirme que sua função retorna o valor 14 ao ser chamada passando os números 6 e 1987 para mês e ano, respectivamente.

USE hr;

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE qtd_funcionarios INT;
  SELECT COUNT(HIRE_DATE) AS `total`
  FROM hr.employees
  WHERE month(HIRE_DATE) = mes
  AND year(HIRE_DATE) = ano
  INTO qtd_funcionarios;
RETURN qtd_funcionarios;
END $$

DELIMITER ;
-- SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
