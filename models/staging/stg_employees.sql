{{ config(materialized='view') }}

select
    employee_id,
    employee_name,
    department_id,
    join_date,
    salary,
    status
from {{ ref('employees') }}
