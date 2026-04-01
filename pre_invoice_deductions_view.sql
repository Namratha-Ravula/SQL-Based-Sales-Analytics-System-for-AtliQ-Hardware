CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `pre_invoice_view` AS
    SELECT 
        `s`.`date` AS `date`,
        `s`.`fiscal_year` AS `fiscal_year`,
        `s`.`customer_code` AS `customer_code`,
        `dim_customer`.`customer` AS `customer`,
        `dim_customer`.`region` AS `region`,
        `dim_customer`.`market` AS `market`,
        `s`.`product_code` AS `product_code`,
        `dim_product`.`product` AS `product`,
        `dim_product`.`variant` AS `variant`,
        `s`.`sold_quantity` AS `sold_quantity`,
        `g`.`gross_price` AS `gross_price`,
        ROUND((`g`.`gross_price` * `s`.`sold_quantity`),
                2) AS `total_gross_price`,
        `p`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`
    FROM
        ((((`fact_sales_monthly` `s`
        JOIN `dim_product` ON ((`s`.`product_code` = `dim_product`.`product_code`)))
        JOIN `dim_customer` ON ((`s`.`customer_code` = `dim_customer`.`customer_code`)))
        JOIN `fact_gross_price` `g` ON (((`g`.`product_code` = `s`.`product_code`)
            AND (`g`.`fiscal_year` = `s`.`fiscal_year`))))
        JOIN `fact_pre_invoice_deductions` `p` ON (((`s`.`customer_code` = `p`.`customer_code`)
            AND (`p`.`fiscal_year` = `s`.`fiscal_year`))))