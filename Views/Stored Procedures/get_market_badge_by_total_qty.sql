CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge_by_total_qty`(
		IN in_market varchar(40),
        IN in_fiscalYear year,
        out market_badge varchar(45)
)
BEGIN
	declare total_qty int default 0;
    
    if in_market='' 
		then set in_market ="india";
    end if;
    
	select sum(sold_quantity) into total_qty
	from fact_sales_monthly s
	join dim_customer using (customer_code)
	where get_fiscal_year(date)=in_fiscalYear and market=in_market
	group by market
	order by market asc;
    
    if total_qty > 5000000 then
		set market_badge="Gold";
	else
		set market_badge="Silver";
	end if ;   
END