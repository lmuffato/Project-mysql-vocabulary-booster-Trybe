DELIMITER $$

CREATE TRIGGER Insert_CurrentDate_Into_OrderDate
  BEFORE INSERT ON `w3schools`.orders
  FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = CURRENT_DATE();
  END $$

DELIMITER ;
