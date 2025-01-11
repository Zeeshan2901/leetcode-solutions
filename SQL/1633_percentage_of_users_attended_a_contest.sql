with UsersCount as (
    select count(*) as usercount from Users
)
select r.contest_id , Round((count(*)/us.usercount) * 100, 2) as percentage
from Register r join UsersCount us on 1=1
group by r.contest_id
order by percentage desc,r.contest_id asc ;
