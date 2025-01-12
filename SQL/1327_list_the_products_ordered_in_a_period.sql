select prod.product_name
    , sum(o.unit) as unit
from Products prod, Orders o
where prod.product_id = o.product_id
    and DATE_FORMAT(o.order_date, '%Y-%m') = '2020-02' 
group by prod.product_name
having sum(o.unit) >=100;
