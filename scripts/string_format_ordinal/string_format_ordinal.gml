/**
@desc		Returns the ordinal form of a given integer (i.e. 1 -> 1st, 2 -> 2nd, 3 -> 3rd...)

@param		{Real}		n		The number to format

@return		{String}
@pure
*/

function string_format_ordinal(n)
{
	// floor n to make it an integer
	n = floor(n);
	// define string to store result in
	var str = string(n);
	// special case for numbers ending in 11, 12, and 13
	if (string_length(str) >= 2 && string_char_at(str, string_length(str) - 1) == "1")
	{
		str += "th";
	}
	// check final digit for ordinal extension
	else
	{
		switch (string_char_at(str, string_length(str)))
		{
			case 1:
				str += "st";
				break;
		
			case 2:
				str += "nd";
				break;
		
			case 3:
				str += "rd";
				break;
		
			default:
				str += "th";
				break;
		}
	}
	// return final string
	return (str);
}
