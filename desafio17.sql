-- challenge 17;
-- https://blog.betrybe.com/tecnologia/o-que-e-como-usar/#:~:text=Trigger%20significa%20gatilho%2C%20em%20portugu%C3%AAs,ou%20altera%C3%A7%C3%A3o%20de%20alguma%20linha.

USE w3schools;

DELIMITER $$
CREATE TRIGGER insertCurrentDate
  AFTER INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate=NOW();
END $$

DELIMITER ;
