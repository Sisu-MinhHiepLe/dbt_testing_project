

select * from prod_ms_broker.insurance_inquiries
where updated_at <= current_date



  -- this filter will only be applied on an incremental run
  and updated_at > (select max(updated_at) from "data_intelligence_system"."dev_schema"."incremental_model")

