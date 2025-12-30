{{
    config(
        materialized='table'
    )
}}
with temp_1 as (
select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER limit 20 )

select * from temp_1 
union all
select * from {{ ref('my_third_dbt_model') }}