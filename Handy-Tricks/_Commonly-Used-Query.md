#### Checking Distinct Counts in Table

    SELECT count(*), count(distinct customer_id) FROM Customer
    
#### Finding Examples of a Duplicate Record
    
    SELECT 
    first_name 
    , count(*) as ct
    
    FROM Customer
    GROUP BY
        first_name
    HAVING
        count(*) > 1
    ORDER BY 
        COUNT(*) DESC;

#### Handling NULLS with DISTINCT

    with new_table as (
    select customer_id from Customer
    UNION
    select null
    )

    select 
        count(*)
      , count(distinct customer_id)
      , count(customer_id) 

    from new_table
    
#### Using SUM and CASE WHEN Together

    select 
         sum(case when allergies = 'Penicillin' and city = 'Burlington' then 1 else 0 end) as allergies_burl
       , sum(case when allergies = 'Penicillin' and city = 'Oakville' then 1 else 0 end)   as allergies_oak

    from patients

#### Don’t Forget About Window Functions

    select
        p.*
      , MAX(weight) over (partition by city) as maxwt_by_city

     from patients p
     

SOURCE: [SQL Tips](https://towardsdatascience.com/10-quick-sql-tips-after-writing-daily-in-sql-for-3-years-37bdba0637d0)
