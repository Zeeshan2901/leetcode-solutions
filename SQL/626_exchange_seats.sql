with T1 as (
    select s1.id, s2.student
    from Seat s1, Seat s2
    where s1.id = s2.id-1 and s2.id%2 = 0
),
T2 as (
    select s2.id, s1.student
    from Seat s1, Seat s2
    where s1.id = s2.id-1 and s2.id%2 = 0
), 
T3 as (
    select id, student
    from Seat
    order by id desc
    limit 1
),
T4 as (
    select * from T1
    union 
    select * from T2
    union
    select * from T3
    where id %2 =1
)
select * from T4
order by id asc;




select id
    , case when id%2 = 0 then lag(student) over(order by id asc)
        else coalesce(lead(student) over(order by id asc), student) end as student
from Seat
order by id asc;
