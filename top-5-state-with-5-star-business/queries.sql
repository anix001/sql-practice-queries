WITH five_star_businesses as(
        select * 
        from yelp_business where stars = 5
    ),
    no_of_businesses as(
    select state, count(state) as no_of_business
    from five_star_businesses
    group by state
    ),
    top_5_state as(
    select *,
    DENSE_RANK() OVER (ORDER BY no_of_business DESC) AS rank
    from no_of_businesses 
    )
    select state,no_of_business from top_5_state where rank <=5