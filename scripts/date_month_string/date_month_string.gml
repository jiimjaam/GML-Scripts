/**
@desc		Returns as a string the name of the provided month

@param		{Real}		month		The month to get the name of (Valid values: 1 to 12)

@return		{String}
@pure
*/

function date_month_string(month)
{
	switch (month)
	{
		case 1:
			return "January";
		
		case 2:
			return "February";
		
		case 3:
			return "March";
		
		case 4:
			return "April";
		
		case 5:
			return "May";
		
		case 6:
			return "June";
		
		case 7:
			return "July";
		
		case 8:
			return "August";
		
		case 9:
			return "September";
		
		case 10:
			return "October";
		
		case 11:
			return "November";
		
		case 12:
			return "December";
	}
}
