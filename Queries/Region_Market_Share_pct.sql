with cte1 as (select customer , region , round(sum(Net_sales)/1000000,2) as net_sales_mln from net_sales_view
where fiscal_year=2021
group by customer , region)

select *,net_sales_mln*100/sum(net_sales_mln) over(partition by region) as region_share_pct from cte1
order by region , net_sales_mln desc;