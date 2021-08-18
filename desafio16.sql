
delimiter $$
create function BuscarQuantidadeEmpregosFuncionario(email_employeer varchar(50))
returns int reads sql data begin
declare total_empregos int;
  select count(*)
  from hr.employees e
  join hr.job_history jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  where e.EMAIL like email_employeer into total_empregos;
return total_empregos;
end $$
delimiter ;
