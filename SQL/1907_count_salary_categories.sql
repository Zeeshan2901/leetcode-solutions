with T1 as (
    select *
        , case when income < 20000 then 'Low Salary'
            when income >= 20000 and income <= 50000 then 'Average Salary'
            when income > 50000 then 'High Salary' end as category
    from Accounts
),
T2 as (
    select 'Low Salary' as category 
        , 0 as accounts_count
    union     
    select 'Average Salary' as category 
        , 0 as accounts_count
    union
    select 'High Salary' as category 
        , 0 as accounts_count   
), 
T3 as(
    select category
        , count(*) as accounts_count
    from T1
    group by category
    union 
    select * from T2
) 
select category
    , sum(accounts_count) as accounts_count
from T3
group by category
;
