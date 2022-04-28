-- Use the `ref` function to select from other models

select *
from "data_intelligence_system"."dev_schema"."my_first_dbt_model"
where id = 1