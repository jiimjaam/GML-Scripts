/**
@desc		Returns the UTC offset (in hours) of the local timezone

@return		{Real}
@pure
*/

function date_get_utc_offset()
{
	var prev_timezone = date_get_timezone();
	
	// get datetime values
	date_set_timezone(timezone_utc);
	var utc_values =
	{
		year   : current_year,
		month  : current_month,
		day    : current_day,
		hour   : current_hour,
		minute : current_minute,
		second : current_second,
	};
	date_set_timezone(timezone_local);
	var local_values =
	{
		year   : current_year,
		month  : current_month,
		day    : current_day,
		hour   : current_hour,
		minute : current_minute,
		second : current_second,
	};
	
	// compare datetime values to get offset
	date_set_timezone(prev_timezone);
	var utc_datetime = date_create_datetime(utc_values.year, utc_values.month, utc_values.day, utc_values.hour, utc_values.minute, utc_values.second);
	var local_datetime = date_create_datetime(local_values.year, local_values.month, local_values.day, local_values.hour, local_values.minute, local_values.second);
	var minute_span = date_compare_datetime(local_datetime, utc_datetime) * round(date_minute_span(local_datetime, utc_datetime));
	
	// return UTC offset
	return (minute_span / 60);
}
