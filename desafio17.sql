-- 17 - Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente a data atual na coluna OrderDate
USE w3schools;

DELIMITER $$
CREATE TRIGGER order_insertions
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.orderDate = NOW();
END $$
DELIMITER ;
