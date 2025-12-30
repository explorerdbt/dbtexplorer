{{
    config(
        materialized='view'
    )
}}
with temp as (
(select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER limit 20 )
union all
(select * from {{ ref('my_third_dbt_model') }}  ))

select * from temp