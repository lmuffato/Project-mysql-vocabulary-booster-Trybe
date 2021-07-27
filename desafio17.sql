USE w3schools;
DELIMITER $$
CREATE TRIGGER insertDateInTheTable BEFORE INSERT ON orders FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$
DELIMITER ;