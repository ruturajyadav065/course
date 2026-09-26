select 
S.sales_id,
S.customer_sk,
S.quantity,
S.unit_price,
C.customer_name
from Learning_Cloud.DBT_Schema.fact_sales S
join 
{{ref('STG_Customer')}} C 
on S.customer_sk =  C.customer_sk