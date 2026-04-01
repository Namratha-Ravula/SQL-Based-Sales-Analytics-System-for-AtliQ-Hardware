select get_fiscal_year(date) as fiscal_year,
		round(sum(g.gross_price*s.sold_quantity),2) as yearly_sales
from fact_sales_monthly s
join fact_gross_price g on
	s.product_code=g.product_code and
    get_fiscal_year(s.date)=g.fiscal_year
where customer_code=90002002
group by get_fiscal_year(date)
order by fiscal_year;