select *
from {{ ref('stg_orders') }}
where o_totalprice <0
