Select JOB_TITLE as 'Cargo', case
when MAX_SALARY >= 5000 and MAX_SALARY <= 10000 then 'Baixo'
when MAX_SALARY >= 10001 and MAX_SALARY <= 20000 then 'Médio'
when MAX_SALARY >= 20001 and MAX_SALARY <= 30000 then 'Alto'
else 'Altíssimo'
end as 'Nível' from hr.jobs order by JOB_TITLE;
