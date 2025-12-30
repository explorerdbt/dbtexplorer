{{
    config(
        materialized='view'
    )
}}
with temp as (
select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER limit 10 )

select * from temp