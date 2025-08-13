/**
@desc		Returns as a string the name of the provided weekday

@param		{Real}		weekday		The weekday to get the name of (Valid values: 0 to 6)

@return		{String}
@pure
*/

function date_weekday_string(weekday)
{
	switch (weekday)
	{
		case 0:
			return "Sunday";
		
		case 1:
			return "Monday";
		
		case 2:
			return "Tuesday";
		
		case 3:
			return "Wednesday";
		
		case 4:
			return "Thursday";
		
		case 5:
			return "Friday";
		
		case 6:
			return "Saturday";
	}
}
