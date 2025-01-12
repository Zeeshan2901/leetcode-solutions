with T1 as (
    select *
        , rank() over(partition by product_id order by change_date desc) as rnk
    from Products
    where change_date <= '2019-08-16'
)
select product_id
    , new_price as price
from T1
where rnk =1
union
select product_id
    , 10 as price
from Products
where product_id not in (select product_id from T1) ;
