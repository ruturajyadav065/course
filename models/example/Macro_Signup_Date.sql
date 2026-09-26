select *,
{{ Gate_Date('SIGNUP_DATE') }}
from {{source('My_Source','DIM_CUSTOMER')}}
 