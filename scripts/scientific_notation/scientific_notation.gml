/**
@desc		Returns the input number formatted in scientific notation as a string 

@param		{Real}			n					The number to format
@param		{Real}			[min_exponent]		(Optional) If the returned exponent is less than this number, don't format in scientific notation (Default: 9 / 1 billion / 1E9)
@param		{Bool}			[capitalized]		Whether to return the string with a capital (true) or lowercase (false) letter "E," e.g. 123E321 vs 123e321 (Default: true)

@return		{String}		
@pure
*/

function scientific_notation(n, min_exponent = 9, capitalized = true)
{
	if (!is_real(n))
	{
		return string(NaN);
	}
	// special case for infinity
	else if (is_infinity(n))
	{
		return string(infinity);
	}
	
	var exponent = floor(log10(n));
	var coefficient = n / power(10, exponent);

	if (exponent < min_exponent)
	{
		return string_format_separator(n);
	}
	else
	{
		var e_str = "E";
		if (!capitalized)
		{
			e_str = "e";
		}
		
		return (string_format_separator(coefficient) + e_str + string_format_separator(exponent));
	}
}
