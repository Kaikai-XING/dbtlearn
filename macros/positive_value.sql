{% test positive_value(model, column_name) %}
SELECT
    *
FROM
    model
WHERE   
    {{ columna_name }} < 1
{% endtest %}