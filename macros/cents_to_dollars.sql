{% macro cents_to_dollars(column_name, round_digit=2) -%}

    round({{column_name}}/100, {{round_digit}}) 

{%- endmacro %}