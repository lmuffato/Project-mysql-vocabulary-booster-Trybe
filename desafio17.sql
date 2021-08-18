delimiter $$
create trigger triggerBeforeInsert
before insert on orders
  for each row
begin
set new.orderDate = date(now());
end
$$ delimiter ;
