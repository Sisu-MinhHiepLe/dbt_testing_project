select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from "data_intelligence_system"."dev_schema"."usp_load_broker_insurance_commission_fact"
where external_inquiry_id is null



      
    ) dbt_internal_test