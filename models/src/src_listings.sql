with raw_listings as (
select * from {{ source('airbnb', 'listings') }}
)
SELECT 
ID as LISTING_ID,
NAME as LISTING_NAME,
LISTING_URL,
room_type,
minimum_nights,
host_id,
price as price_str,
created_at,
updated_at
from raw_listings
