select query_name
    , Round(avg(rating/position),2) as quality
    , Round((sum(case when rating < 3 then 1 else 0 end)/count(*)) * 100,2) as poor_query_percentage
from Queries
where query_name is not NULL
group by query_name;
