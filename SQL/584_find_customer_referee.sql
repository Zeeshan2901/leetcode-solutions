select name 
from Customer 
where referee_id IS NULL or referee_id not in (2);
