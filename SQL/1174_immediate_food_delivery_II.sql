with immediate as (
    select customer_id 
        , order_date 
        , customer_pref_delivery_date
        , case when order_date = customer_pref_delivery_date then 1 else 0 end as is_immediate
    from Delivery    
), 
first_order as (
    select customer_id 
        , min(order_date) as first_order 
    from Delivery 
    group by customer_id
)
select Round(sum(is_immediate)/count(*)  * 100 , 2) as immediate_percentage
from first_order f, immediate i 
where f.customer_id = i.customer_id 
and i.order_date = f.first_order;
