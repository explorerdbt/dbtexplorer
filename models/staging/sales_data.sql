select
    order_id,
    order_date,
    customer_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price as total_amount,
    status_code,
    region
from {{ ref('sales') }}
