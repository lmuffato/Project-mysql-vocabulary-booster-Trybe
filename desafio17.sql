USE w3schools;
DELIMITER $$
CREATE TRIGGER trigger_data_atual_insert
  BEFORE INSERT ON orders
  FOR EACH ROW
  BEGIN
  SET NEW.OrderDate = NOW();
  END $$
  DELIMITER ;
