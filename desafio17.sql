use w3schools;

DELIMITER $$

CREATE TRIGGER insereData
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  INSERT INTO orders(OrderDate) VALUES (curdate());
END $$

DELIMITER ;
