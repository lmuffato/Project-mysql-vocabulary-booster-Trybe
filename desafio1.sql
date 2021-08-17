select COUNTRY_NAME as País,
  if(REGION_ID = 1, "incluído", "não incluído") as "Status Inclusão"
from hr.countries order by País;
