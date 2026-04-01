CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customers_by_net_sales`(
	in_market varchar(45),
	in_fiscal_year int,
    in_top_n int 
)
BEGIN
SELECT 
    customer , round(sum(Net_sales)/1000000,2) as net_sales
FROM
    net_sales_view
where fiscal_year=in_fiscal_year and market=in_market
group by customer
order by net_sales desc
limit in_top_n;
END