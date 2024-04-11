with raw_hosts as (
select * from {{ source('airbnb', 'hosts') }}
)
SELECT 
ID as HOST_ID,
NAME AS HOST_NAME,
IS_SUPERHOST,
CREATED_AT,
UPDATED_AT
from raw_hosts