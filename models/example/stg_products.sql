select
    id              as product_id,
    name            as product_name,
    category,
    price           as product_price,
    created_at      as product_created_at
from RAW_DB.RAW.products
