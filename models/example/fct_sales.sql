select
    o.order_id,
    o.customer_id,
    o.product_id,
    o.order_date,
    o.order_status,
    o.quantity,
    o.unit_price,
    o.line_amount
from {{ ref('stg_orders') }} o
