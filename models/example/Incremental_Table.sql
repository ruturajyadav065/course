{{ config(materialized='incremental',
unique_key='CUSTOMER_SK')
 }}

SELECT
    CUSTOMER_SK,
    CUSTOMER_CODE,
    FIRST_NAME,
    LAST_NAME,
    GENDER,
    EMAIL,
    PHONE,
    LOYALTY_TIER,
    SIGNUP_DATE,
    UPDATED_DATE

FROM Learning_Cloud.DBT_Schema.Dim_Customer

{% if is_incremental() %}

WHERE UPDATED_DATE > (
    SELECT MAX(tgt.UPDATED_DATE)
    FROM {{ this }} AS tgt
)

{% endif %}