with customer_tbl as (select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER limit 100)

select *
from customer_tbl
