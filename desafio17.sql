USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_cuurent_date_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN 
SET NEW.OrderDate = DATE(NOW());
END $$  

DELIMITER ;
