select distinct num as ConsecutiveNums
from (
    select num
    , lead(num, 1, -100) over() as num1
    , lead(num, 2, -100) over() as num2
    from Logs
) findconsecs 
where num1= num and num2 = num;
