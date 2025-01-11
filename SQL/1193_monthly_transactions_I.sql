select DATE_FORMAT(t.trans_date,'%Y-%m') as month 
    , t.country
    , count(*) as trans_count
    , sum(case when t.state = 'approved' then 1 else 0 end) as approved_count
    , sum(t.amount) as trans_total_amount
    , sum(case when t.state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions t 
group by t.country, month;
