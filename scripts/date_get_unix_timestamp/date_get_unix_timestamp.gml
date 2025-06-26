/**
@desc		Returns a Unix timestamp for the current or given GameMaker datetime

@param		{Real}		[datetime]		Datetime value (default: current time)

@return		{Real}
@pure
*/

function date_get_unix_timestamp(datetime = date_current_datetime())
{
	// get current timezone being used
	var prev_timezone = date_get_timezone();
	
	// set timezone to UTC (if it's not already)
	if (prev_timezone != timezone_utc)
	{
		datetime = date_inc_minute(datetime, -date_get_utc_offset() * 60);
		date_set_timezone(timezone_utc);
	}
	
	// define Unix epoch
	var epoch = date_create_datetime(1970, 1, 1, 0, 0, 0);
	
	// get number of seconds between Unix epoch and current time
	var second_span = floor(date_second_span(epoch, datetime));
	
	// set timezone back to previous timezone (if they don't match)
	date_set_timezone(prev_timezone);
	
	// return second span since Unix epoch
	return second_span;
}
