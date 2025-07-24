/**
@desc		Converts a Real into a String with separator characters inserted

@param		{Real}			n						Number to format
@param		{String}		[separator]				Character(s) used to format the number
@param		{Real.Int}		[digits_in_period]		Number of digits in each period
@param		{Real.Int}		[decimal_places]		Number of decimal places to display
@param		{Bool}			[clean_decimals]		Remove trailing zeroes from decimal string (true by default)

@return		{String}
@pure
*/

function string_format_separator(n, separator = ",", digits_in_period = 3, decimal_places = 6, clean_decimals = true)
{
	// integer places
	var int = string(floor(n));
	var digits = digits_in_period - 1;
	
	var str = "";

	var cnt = 0;
	for (var i = string_length(int); i > 0; --i)
	{
	    str = string_char_at(int, i) + str;
	    if (cnt++ == digits && i > 1)
	    {
	        cnt = 0;
	        str = separator + str;
	    }
	}

	// decimal places
	if (!is_int(n))
	{
		var frc = string_format(frac(n), 0, decimal_places);
		
		// clean trailing zeroes from decimal number
		if (clean_decimals)
		{
			while (string_char_at(frc, string_length(frc)) == "0")
			{
				frc = string_delete(frc, string_length(frc), 1);
			}
			
			// truncate decimal point if needed
			if (string_char_at(frc, string_length(frc)) != ".")
			{
				str += string_delete(frc, 1, 1); // delete leading zero from decimal number
			}
		}
	}
	
	return str;
}
