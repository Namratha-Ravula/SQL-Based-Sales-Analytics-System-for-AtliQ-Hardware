CREATE DEFINER=`root`@`localhost` FUNCTION `get_quarter`(calender_date date) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	declare quarter char(2);
    set quarter = concat('Q',quarter(date_add(calender_date , interval 4 month)));
RETURN quarter ;
END