select
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    c.country,
    c.customer_created_at,
    sum(s.line_amount) as lifetime_value,
    count(distinct s.order_id) as total_orders
from {{ ref('stg_customers') }} c
left join {{ ref('fct_sales') }} s
    on c.customer_id = s.customer_id
group by
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    c.country,
    c.customer_created_at
