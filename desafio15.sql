delimiter $$
create procedure buscar_media_por_cargo(in referense_job varchar(50))
begin
select round((avg(e.SALARY)), 2) "Média salarial"
from hr.employees e
inner join hr.jobs j on e.JOB_ID = j.JOB_ID
where j.JOB_TITLE like referense_job;
end $$
delimiter ;

call buscar_media_por_cargo("Programmer");
