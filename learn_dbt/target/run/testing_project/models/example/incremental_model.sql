
      
    delete from "data_intelligence_system"."dev_schema"."incremental_model"
    where (id) in (
        select (id)
        from "incremental_model__dbt_tmp140403084704"
    );
    

    insert into "data_intelligence_system"."dev_schema"."incremental_model" ("id", "user_id", "company_id", "status", "created_at", "updated_at", "category_id", "policy_number", "pool", "is_deleted", "author_id", "creation_reason", "rejection_reason", "more_information_required", "deletion_reason", "deletion_date", "transfer_date", "failed_reason", "external_id", "extra_info", "last_updated_on", "checksum_id")
    (
        select "id", "user_id", "company_id", "status", "created_at", "updated_at", "category_id", "policy_number", "pool", "is_deleted", "author_id", "creation_reason", "rejection_reason", "more_information_required", "deletion_reason", "deletion_date", "transfer_date", "failed_reason", "external_id", "extra_info", "last_updated_on", "checksum_id"
        from "incremental_model__dbt_tmp140403084704"
    )
  