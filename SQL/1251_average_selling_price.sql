select pr.product_id, round(sum(pr.price * us.units)/sum(us.units),2) as average_price
from Prices pr, UnitsSold us
where pr.product_id = us.product_id
    and us.purchase_date between pr.start_date and pr.end_date
group by pr.product_id;
