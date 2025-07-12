/**
@desc		Converts a real number from decimal notation to its binary equivalent

@param		{Real}		n		The number to convert

@return		{Real}
@pure
*/

function decimal_to_binary(n)
{
	if (n == 0 || n == 1)
	{
		return n;
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
	return real(str);
}
