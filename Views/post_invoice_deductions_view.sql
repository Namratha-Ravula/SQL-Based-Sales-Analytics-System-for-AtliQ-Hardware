CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `post_invoice_view` AS
    SELECT 
        `s`.`date` AS `date`,
        `s`.`fiscal_year` AS `fiscal_year`,
        `s`.`customer_code` AS `customer_code`,
        `s`.`customer` AS `customer`,
        `s`.`market` AS `market`,
        `s`.`region` AS `region`,
        `s`.`product_code` AS `product_code`,
        `s`.`product` AS `product`,
        `s`.`variant` AS `variant`,
        `s`.`sold_quantity` AS `sold_quantity`,
        `s`.`gross_price` AS `gross_price`,
        `s`.`total_gross_price` AS `total_gross_price`,
        `s`.`pre_invoice_discount_pct` AS `pre_invoice_discount_pct`,
        ROUND((`s`.`total_gross_price` * (1 - `s`.`pre_invoice_discount_pct`)),
                2) AS `net_invoice_sales`,
        (`post`.`discounts_pct` + `post`.`other_deductions_pct`) AS `total_post_invoice_deductions`
    FROM
        (`pre_invoice_view` `s`
        JOIN `fact_post_invoice_deductions` `post` ON (((`s`.`customer_code` = `post`.`customer_code`)
            AND (DATE_FORMAT(`s`.`date`, '%Y-%m-01') = `post`.`date`)
            AND (`s`.`product_code` = `post`.`product_code`))))