select
    o.o_custkey
    o.o_orderstatus,
    o.o_orderdate,
    o.o_totalprice  
from {{ ref('stg_orders') }} o
