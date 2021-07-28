SELECT COUNTRY_NAME as 'País', case
when REGION_ID = 1 then 'incluído' else 'não incluído' end as 'Status Inclusão'
from hr.countries order by COUNTRY_NAME;
