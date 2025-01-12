with T1 as (
    select id
        , email
        , rank() over(partition by email order by id asc) as delete_rank
    from Person
), T2 as(
    select id from T1
    where delete_rank != 1
)
delete from Person where id in (select id from T2);





delete p1 from Person p1, person p2
where p1.email = p2.email and
p1.Id >p2.Id
