

  create  table "data_intelligence_system"."dev_schema"."usp_load_broker_insurance_commission_fact__dbt_tmp"
  as (
    

Select
    source.id as external_inquiry_id
    ,coalesce (ii_dionera.created_at, source.transfer_date::timestamp)::timestamp as inquiry_transferred_at
From prod_ms_broker.insurance_inquiries source
Left Join prod_ms_dionera.insurance_inquiries ii_dionera On source.id = ii_dionera.internal_inquiry_id
  );