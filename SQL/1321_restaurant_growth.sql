
select distinct visited_on
    , (
        select sum(amount)
        from Customer C2
        where c2.visited_on Between date_sub(c1.visited_on, interval 6 day) and c1.visited_on
        ) as amount
    , Round(
        (
            select sum(amount)/7
            from Customer C2
            where c2.visited_on Between date_sub(c1.visited_on, interval 6 day) and c1.visited_on
            ) ,2
        ) as average_amount
from Customer c1
where visited_on >= (
    select date_add(min(visited_on), interval 6 day)
    from customer
)
group by visited_on;

