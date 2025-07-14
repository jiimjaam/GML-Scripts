/**
@desc		Converts an integer from decimal to binary notation (two's complement)

@param		{Real,String}		n				The number to convert
@param		{Bool}				[prefix]		Whether to include the binary prefix in the string (true) or not (false), i.e. "0110110" -> "0b0110110" (Default: false)

@return		{String}
@pure
*/

function decimal_to_binary(n, prefix = false)
{
	// define empty string to store binary representation
	var str = "";
	
	// convert input value to real if needed
	if (is_string(n))
	{
		n = real(n);	
	}
	
	// get sign
	var _sign = sign(n);
	n = floor(abs(n));
	if (_sign == 0)
	{
		str = string(0);
	}
	else
	{
		while (n > 0)
		{
			// get LSB of n
			var bit = n & 1;
			// add LSB value to final string
			str += string(bit);
			// right-shift n by 1 to remove current LSB
			n = n >> 1;
		}
		
		// reverse binary string to get final absolute binary value
		str = "0" + string_reverse(str);
		
		// signed behavior
		if (_sign == -1)
		{
			// determine position of LSB
			var lsb = string_last_pos("1", str);
			// define string to store two's complement of positive integer
			var negative_str = string_copy(str, lsb, 1 + (string_length(str) - lsb));
			// loop through number and swap (NOT ~) all bits before LSB to get two's complement negative
			for (var i = lsb - 1; i >= 1; --i)
			{
				switch (string_char_at(str, i))
				{
					case "0":
						negative_str = "1" + negative_str;
						break;
					
					case "1":
						negative_str = "0" + negative_str;
						break;
				}
			}
			// store negative string in final result variable
			str = negative_str;
		}
	}
	
	if (prefix)
	{
		str = "0b" + str;	
	}
	return str;
}
