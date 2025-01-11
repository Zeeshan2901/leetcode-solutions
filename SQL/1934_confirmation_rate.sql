select sig.user_id, 
    round(avg(case when con.action = 'confirmed' then 1 else 0 end),2) as confirmation_rate
from Signups sig left join Confirmations con
    on sig.user_id = con.user_id
group by sig.user_id;
