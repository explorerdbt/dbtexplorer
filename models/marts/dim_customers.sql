{{ config(materialized="table") }}

select
    c.c_custkey,
    o.o_custkey,
    c.c_name,
    c.c_address,
    c.c_acctbal,
    o.o_orderstatus,
    o.o_orderdate,
    o.o_totalprice,
    s.region
from {{ ref("stg_customers") }} c
left join {{ ref("fct_sales") }} o on c.c_custkey = o.o_custkey
left join {{ref('sales')}} s on o_orderstatus = s.status_code
where o.o_custkey is not null
