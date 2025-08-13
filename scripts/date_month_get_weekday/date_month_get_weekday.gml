/**
@desc		Returns the datetime value of the nth weekday of a given month in a given year (i.e. the first Monday of January 1970). Returns -1 if the date does not exist

@param		{Real}		year			The year of the date to find
@param		{Real}		month			The month of the date to find
@param		{Real}		weekday			The weekday to find
@param		{Real}		n				The ordinal value of the weekday to find

@return		{Real}
@pure
*/

function date_month_get_weekday(year, month, weekday, n)
{
	// initialize datetime for searching
	var result = date_create_datetime(year, month, 1, 0, 0, 0);
	// increment by 1 day until desired weekday is found
	while (date_get_weekday(result) != weekday)
	{
		result = date_inc_day(result, 1);
	}
	// increment by 1 week until nth desired weekday is found
	var nth = 1;
	while (nth < n)
	{
		++nth;
		result = date_inc_week(result, 1);
		if (date_get_month(result) != month || date_get_year(result) != year)
		{
			return -1;
		}
	}
	// return final datetime value
	return (result);
}
