-- challenge 17;
-- https://blog.betrybe.com/tecnologia/o-que-e-como-usar/#:~:text=Trigger%20significa%20gatilho%2C%20em%20portugu%C3%AAs,ou%20altera%C3%A7%C3%A3o%20de%20alguma%20linha.
-- https://github.com/tryber/sd-010-a-mysql-vocabulary-booster/pull/77/commits/15f02ce08d48977010e475b9ed30f64ff4854066

USE w3schools;

DELIMITER $$
CREATE TRIGGER insertCurrentDate
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate=NOW();
END $$

DELIMITER ;
