select pro.project_id, round(avg(emp.experience_years),2) as average_years
from Project pro, Employee emp
where pro.employee_id = emp.employee_id
group by pro.project_id;
