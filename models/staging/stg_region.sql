{{
    config(
        materialized='table'
    )
}}

with region_tbl as (select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.REGION limit 100)

select *
from region_tbl
