USE w3schools;

DELIMITER $$
CREATE TRIGGER OrderDate_trigger
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
    SET NEW.orderDate = DATE(now());
END $$
DELIMITER $$ ;

-- uso o SET pois antes de implementar o UPDATE eu faço o SET no trigger
