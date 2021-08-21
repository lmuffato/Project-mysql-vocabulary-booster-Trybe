DELIMITER $$

CREATE TRIGGER trigger_order_date_insert
	BEFORE INSERT ON w3schools.orders
  FOR EACH ROW
BEGIN
	SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
