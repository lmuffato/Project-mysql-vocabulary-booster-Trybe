/* 17. Crie uma TRIGGER que, a cada nova inserção realizada na
tabela orders, insira automaticamente a data atual na coluna OrderDate */
USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_automatic_date_oder
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate = DATE(now()),
END $$

DELIMITER;
