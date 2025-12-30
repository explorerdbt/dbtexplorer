{{
    config(
        materialized='table'
    )
}}

select
    id                as customer_id,
    first_name,
    last_name,
    email,
    country,
    created_at        as customer_created_at
from RAW_DB.RAW.customers
