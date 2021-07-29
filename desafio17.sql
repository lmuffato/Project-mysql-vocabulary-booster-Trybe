CREATE TRIGGER inserir_data_trigger
  BEFORE INSERT ON orders
  FOR EACH ROW
BEGIN
  SET NEW.OrderDate = DATE(NOW());
END
