{{ config(materialized='view') }}

with stg_customer as (
select Customer_sk,
concat(first_name, ' ',last_name) as Customer_Name,
email as Email_Address,
Phone as Phone_Number
from 
{{source('DBT_Schema','DIM_CUSTOMER')}}
)

select * from stg_Customer

