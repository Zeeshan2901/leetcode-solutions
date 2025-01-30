# Write your MySQL query statement below
select name 
from SalesPerson 
where sales_id not in (
    select ord.sales_id
    from Orders ord left join Company comp on ord.com_id = comp.com_id
    where comp.name in ('RED') 
);
