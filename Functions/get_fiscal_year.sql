CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
	calender_date date
) RETURNS int
    DETERMINISTIC
BEGIN
	declare fiscal int;
    set fiscal = year(date_add(calender_date ,interval 4 month));
RETURN fiscal;
END