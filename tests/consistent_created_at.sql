WITH
    dim_listings AS (
        SELECT * FROM {{ ref("dim_listings_cleansed") }}
    ),
    fct_reviews AS (
        SELECT * FROM {{ ref("fct_reviews")}}
    )
    SELECT
        *
    FROM
        dim_listings l
    JOIN
        fct_reviews f 
    ON
        l.listing_id = f.listing_id
        and
        f.review_date < to_date(l.created_at)