

  create  table "data_intelligence_system"."dev_schema"."usp_load_broker_insurance_commission_dimension__dbt_tmp"
  as (
    

Select
    source.external_id
    ,source.status As status
    , source.policy_number
From prod_ms_broker.insurance_inquiries source
  );