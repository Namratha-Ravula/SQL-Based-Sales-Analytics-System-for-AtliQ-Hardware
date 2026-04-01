CREATE DEFINER=`root`@`localhost` PROCEDURE `monthly_customer_sales`(
		in_customer_code text
)
BEGIN
	select s.date,round(sum(g.gross_price*s.sold_quantity),2) as total_gross_price 
		from fact_sales_monthly s
		join fact_gross_price g on
			s.product_code=g.product_code and
			get_fiscal_year(s.date)=g.fiscal_year
		where find_in_set(s.customer_code,in_customer_code)
		group by s.date
		order by s.date asc;
END