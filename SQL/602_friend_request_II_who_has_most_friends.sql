with T1 as (
    select requester_id as id
    , count(*) as num 
    from RequestAccepted 
    group by requester_id
),
T2 as (
    select accepter_id as id
    , count(*) as num 
    from RequestAccepted 
    group by accepter_id
),
 T3 as (
    select * from T2 
    union all 
    select * from T1
)
select id 
    ,sum(num) as num
from T3
group by id
order by num desc
limit 1;
