{% macro normalize_employee_status(col) %}
    case
        when {{ col }} = 'A' then 'Active'
        when {{ col }} = 'I' then 'Inactive'
        else 'Unknown'
    end
{% endmacro %}


{% macro incremental_filter(date_col) %}
    {% if is_incremental() %}
        where {{ date_col }} >
        (
            select coalesce(max({{ date_col }}), '1900-01-01')
            from {{ this }}
        )
    {% endif %}
{% endmacro %}
