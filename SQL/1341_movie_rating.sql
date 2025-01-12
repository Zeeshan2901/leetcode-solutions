with T1 as (
    select mr.user_id
        , count(*) as maxrated
    from MovieRating mr
    group by user_id
),
T2 as (
    select u.name as results
    from T1 t1 join Users u on t1.user_id = u.user_id
    order by t1.maxrated desc, u.name asc
    limit 1
),
T3 as (
    select mr.movie_id
        , avg(rating) as avgRating
    from MovieRating mr
    where DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
    group by mr.movie_id
),
T4 as(
    select m.title as results
    from T3 t3 join Movies m on t3.movie_id = m.movie_id
    order by t3.avgRating desc , m.title asc
    limit 1
)
select * from  T2 union all select * from T4
