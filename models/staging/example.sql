
{{
    config(
        materialized='incremental'
    )
}} 
select
    o_custkey,o_orderdate,
    {{normalize_status ('o_orderstatus')}} as order_status
    from {{ ref('stg_orders') }}  
   
   