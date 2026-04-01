with cte1 as (SELECT 
    customer ,  round(sum(Net_sales)/1000000,2) as net_sales
FROM
    net_sales_view
where fiscal_year=2021
group by customer
order by net_sales desc)
select * , (net_sales)*100/sum(net_sales) over() as pct_share from cte1;