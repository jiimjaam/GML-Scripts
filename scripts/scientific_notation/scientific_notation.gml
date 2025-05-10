/**
@desc		Returns the input number formatted in scientific notation as a string 

@param		{Real}			n					The number to format
@param		{Real}			[min_exponent]		(Optional) If the returned exponent is less than this number, don't format in scientific notation (Default: 9 / 1 billion / 1E9)

@return		{String}		
@pure
*/

function scientific_notation(n, min_exponent = 9)
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
		return string("{0}E{1}", string_format_separator(coefficient), string_format_separator(exponent));
	}
}