{{
    config(
        materialized='table'
    )
}}

with order_tbl as (select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS limit 100)

select *
from order_tbl
