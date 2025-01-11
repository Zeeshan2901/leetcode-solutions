select emp.name, b.bonus
from Employee emp left join Bonus b
    on emp.empId = b.empId
where b.bonus < 1000 or b.bonus is NULL;
