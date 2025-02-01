# Write your MySQL query statement below


select prod.product_id, prod.product_name
from Product prod join Sales sl
on  prod.product_id = sl.product_id
group by prod.product_id
having min(sl.sale_date) >= '2019-01-01' and max(sl.sale_date) <= '2019-03-31';
