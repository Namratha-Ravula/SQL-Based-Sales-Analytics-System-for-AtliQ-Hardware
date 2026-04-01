select s.date,round(sum(g.gross_price*s.sold_quantity),2) as total_gross_price 
from fact_sales_monthly s
join fact_gross_price g on
	s.product_code=g.product_code and
    get_fiscal_year(s.date)=g.fiscal_year
where customer_code=90002002
group by s.date
order by s.date asc;