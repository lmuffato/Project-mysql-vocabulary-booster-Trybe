-- 17 - Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente a data atual na coluna OrderDate

-- https://www.devmedia.com.br/mysql-triggers/8088
-- https://www.tutorialspoint.com/What-is-the-difference-between-MySQL-NOW-and-CURDATE-function

USE w3schools;
DELIMITER $$

CREATE TRIGGER insert_on_orders
BEFORE INSERT ON orders 
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = NOW();
END$$
