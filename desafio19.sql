CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_total_de_pessoas_contratadas INT;
  SELECT COUNT(*)
  FROM hr.employees AS t1
  WHERE YEAR(t1.HIRE_DATE) = ano AND MONTH(t1.HIRE_DATE) = mes
  INTO quantidade_total_de_pessoas_contratadas;
  RETURN quantidade_total_de_pessoas_contratadas;
END
