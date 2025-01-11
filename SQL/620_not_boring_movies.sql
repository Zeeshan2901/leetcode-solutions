select *
from cinema cin
where (cin.id % 2) = 1
    and cin.description != 'boring'
order by cin.rating desc;
