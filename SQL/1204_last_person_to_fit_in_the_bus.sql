with RunningWeight as (
    select *
        , sum(weight) over (order by turn asc )as total_lead_weight
    from Queue
)
select person_name 
from RunningWeight
where total_lead_weight <=1000
order by turn desc
limit 1;
