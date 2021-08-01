USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_OrderDate
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.orderDate = DATE(now());
END $$

DELIMITER ;
