/**
@desc		Converts an integer from decimal to hexadecimal notation

@param		{Real,String}		n				The number to convert
@param		{Bool}				[prefix]		Whether to include the hexadecimal prefix in the string (true) or not (false), i.e. "7f6e5d" -> "0x7f6e5d" (Default: false)

@return		{String}
@pure
*/

function decimal_to_hexadecimal(n, prefix = false)
{
	// define empty string to store hexadecimal representation
	var str = "";
	
	// convert input value to real if needed
	if (is_string(n))
	{
		n = real(n);	
	}
	
	// get sign
	var _sign = sign(n);
	n = floor(abs(n));
	if (n <= 9)
	{
		str = string(n);
	}
	else
	{
		while (n > 0)
		{
			// get remainder of n modulo 16
			var remainder = n % 16;
			// add hexadecimal digit to final result
			switch (remainder)
			{
				case 10:
					str += "a";
					break;
				
				case 11:
					str += "b";
					break;
				
				case 12:
					str += "c";
					break;
				
				case 13:
					str += "d";
					break;
				
				case 14:
					str += "e";
					break;
				
				case 15:
					str += "f";
					break;
				
				default:
					str += string(remainder);
					break;
			}
			// divide by 16 (and floor) to get next digit
			n = floor(n / 16);
		}
		
		// reverse string to get final absolute hexadecimal value
		str = string_reverse(str);
	}
	
	if (prefix)
	{
		str = "0x" + str;	
	}
	
	// signed behavior
	if (_sign == -1)
	{
		str = "-" + str;
	}
	
	return str;
}
