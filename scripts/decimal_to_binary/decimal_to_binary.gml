/**
@desc		Converts a real number from decimal notation to its binary equivalent

@param		{Real}		n				The number to convert
@param		{Bool}		[prefix]		Whether to include the binary prefix in the string (true) or not (false), i.e. "0110110" -> "0b0110110" (Default: false)

@return		{String}
@pure
*/

function decimal_to_binary(n, prefix = false)
{
	if (n == 0 || n == 1)
	{
		return string(n);
	}
	
	// define empty string to store binary representation
	var str = "";
	
	while (n > 0)
	{
		// get LSB of n
		var bit = n & 1;
		// add LSB value to final string
		str += string(bit);
		// right-shift n by 1 to remove current LSB
		n = n >> 1;
	}
	
	// reverse binary string to get final result
	str = string_reverse(str);
	if (prefix)
	{
		str = "0b" + str;	
	}
	return str;
}
