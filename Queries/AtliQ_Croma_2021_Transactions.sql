SELECT date,
	product,variant,sold_quantity,
    g.gross_price , round(g.gross_price*sold_quantity,2) as total_gross_price
FROM fact_sales_monthly s
	join dim_product using (product_code) 
	join fact_gross_price g on 
		s.product_code=g.product_code and
        get_fiscal_year(s.date)=g.fiscal_year
where customer_code=90002002 and 
	get_fiscal_year(date)=2021 
order by date asc
limit 1000000;