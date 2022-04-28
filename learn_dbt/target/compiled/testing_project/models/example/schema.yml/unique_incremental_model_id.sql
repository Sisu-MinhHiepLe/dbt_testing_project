
    
    

select
    id as unique_field,
    count(*) as n_records

from "data_intelligence_system"."dev_schema"."incremental_model"
where id is not null
group by id
having count(*) > 1


