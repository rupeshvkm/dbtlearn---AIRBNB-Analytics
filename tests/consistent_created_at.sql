with reviews as (
    select * from {{ ref("fct_reviews") }}
),
listings as (
    select * from {{ref("dim_listings_cleansed")}}
)
select * from listings a left join 
(select listing_id, min(review_date) as review_date from reviews
 group by listing_id) b 
 on a.listing_id = b.listing_id
 where a.created_at > b.review_date