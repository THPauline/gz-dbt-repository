--Inside, define the macro margin_percent taking as argument revenue and purchase_cost

{% macro margin_percent(purchase_cost, revenue, macro_var=2) %}
    <ROUND(SAFE_DIVIDE({{revenue - purchase_cost}}) / ({{revenue}}),2)>
{% endmacro %}