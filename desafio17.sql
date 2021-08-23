DELIMITER $$
CREATE TRIGGER insertDate
    BEFORE INSERT ON orders
    FOR EACH ROW
BEGIN
    SET NEW.OrderDate = current_date();
END $$
DELIMITER ;
