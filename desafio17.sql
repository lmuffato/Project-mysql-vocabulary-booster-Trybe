DELIMITER $$
CREATE TRIGGER w3schools.trigger_update_date
	BEFORE INSERT ON w3schools.orders
    FOR EACH ROW
BEGIN 
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
