DELIMITER $$
CREATE TRIGGER registerOrderDate
    BEFORE INSERT ON w3schools.orders FOR EACH ROW
    BEGIN
        SET NEW.OrderDate = DATE(now());
    END $$
DELIMITER;
