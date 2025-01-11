select emp2.name
from Employee emp1
join Employee emp2 on emp1.managerId = emp2.id
group by emp2.id
having count(*) >= 5;
