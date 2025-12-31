{% macro normalize_status(status_col) %}
    case
        when {{ status_col }} in ('F') then 'completed'
        when {{ status_col }} in ('O') then 'cancelled'
        else 'pending'
    end
{% endmacro %}


{% macro incremental_filter(date_column) %}
    {% if is_incremental() %}
        where {{ date_column }} > (select max({{ date_column }}) from {{ this }})
    {% endif %}
{% endmacro %}
