{% macro get_date_part(col) %}
{{col}} as Original_Date,
EXTRACT(YEAR FROM {{COL}} ) AS Date_Year,
EXTRACT(MONTH FROM {{col}}) AS Date_Month,
EXTRACT(DAYOFFWEEK FROM {{COL}}) AS Week_Day 

{% endmacro %}