{{ config(
    materialized='incremental',
    unique_key='employee_id'
) }}

select
    e.employee_id,
    e.employee_name,
    d.department_name,
    e.join_date,
    e.salary,
    {{ normalize_employee_status('e.status') }} as employee_status
from {{ ref('stg_employees') }} e
left join {{ ref('departments') }} d
    on e.department_id = d.department_id
{{ incremental_filter('join_date') }}
