-- challenge 17;
USE w3schools;

DELIMITER $$
CREATE TRIGGER insertCurrentDate
  AFTER INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate=NOW();
END $$

DELIMITER ;
