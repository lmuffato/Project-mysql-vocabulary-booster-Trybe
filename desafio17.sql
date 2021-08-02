USE w3schools;

DELIMITER $$
CREATE TRIGGER trigger_orderDate_insert
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.orderDate = NOW();
END $$
DELIMITER ;
