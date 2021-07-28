USE w3schools;
DELIMITER $$

CREATE TRIGGER trigger_order_insertion
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
