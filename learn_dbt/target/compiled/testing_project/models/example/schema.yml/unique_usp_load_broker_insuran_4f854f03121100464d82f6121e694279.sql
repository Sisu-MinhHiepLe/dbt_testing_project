
    
    

select
    external_inquiry_id as unique_field,
    count(*) as n_records

from "data_intelligence_system"."dev_schema"."usp_load_broker_insurance_commission_fact"
where external_inquiry_id is not null
group by external_inquiry_id
having count(*) > 1


