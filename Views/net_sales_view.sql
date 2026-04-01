CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `net_sales_view` AS
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
        `s`.`net_invoice_sales` AS `net_invoice_sales`,
        `s`.`total_post_invoice_deductions` AS `total_post_invoice_deductions`,
        ROUND((`s`.`net_invoice_sales` * (1 - `s`.`total_post_invoice_deductions`)),
                2) AS `Net_sales`
    FROM
        `post_invoice_view` `s`