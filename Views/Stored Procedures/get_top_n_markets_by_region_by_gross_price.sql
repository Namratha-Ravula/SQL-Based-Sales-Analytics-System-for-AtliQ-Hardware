CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_by_region_by_gross_price`(
	in_fiscal_year int,
	in_top_n int
)
BEGIN
	with cte1 as (SELECT market , region , round(sum(total_gross_price)/1000000,2) as gross_price_mln
		 FROM gdb0041.gross_sales_view where fiscal_year = in_fiscal_year
         group by market),
cte2 as (select *,dense_rank() over(partition by region order by gross_price_mln desc) as dense from cte1)

select * from cte2 where dense<=in_top_n;
END