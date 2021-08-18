delimiter $$
create function BuscarQuantidadeEmpregosFuncionario(email_employeer varchar(50))
returns int reads sql data begin
	declare history_jobs_qnt int;
    select count(*)
    from hr.employees e
    join hr.job_history jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    where e.EMAIL like email_employeer into history_jobs_qnt;
    return history_jobs_qnt;
end $$
delimiter ;
