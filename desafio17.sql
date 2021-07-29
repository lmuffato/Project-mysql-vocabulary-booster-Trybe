DELIMITER $$

CREATE TRIGGER order_date
BEFORE INSERT ON w3schools.orders 
FOR EACH ROW
BEGIN
    SET NEW.OrderDate = current_date();
END $$

DELIMITER ;
