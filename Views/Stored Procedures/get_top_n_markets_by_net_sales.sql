CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_by_net_sales`(
	in_fiscal_year int,
    in_top_n int 
)
BEGIN
SELECT 
    market , round(sum(Net_sales)/1000000,2) as net_sales
FROM
    net_sales_view
where fiscal_year=in_fiscal_year
group by market
order by net_sales desc
limit in_top_n;
END