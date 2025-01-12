with T1 as (
    select dept.name as department
        , emp.name as employee
        , emp.salary
        , dense_rank() over(partition by departmentId order by Salary desc) as salary_rank 
    from Employee emp, Department dept
    where emp.departmentId = dept.id 
)
select department
    , employee
    , salary 
from T1
where salary_rank <=3;
