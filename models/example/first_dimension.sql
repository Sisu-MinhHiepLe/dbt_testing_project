{{ config(materialized='table') }}


Select
    source.external_id
    ,source.status As status
    , source.policy_number
From prod_ms_broker.insurance_inquiries source