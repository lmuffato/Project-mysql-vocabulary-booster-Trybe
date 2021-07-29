-- 17 - Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente a data atual na coluna OrderDate
USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_orderDate_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = CURDATE();
    -- Essa montagem da data fiz baseado no PR do Gabriel Pereira
END $$
DELIMITER ;
