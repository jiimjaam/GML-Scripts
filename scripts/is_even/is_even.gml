
/**
@desc		Returns whether the given integer is even (true) or not (false)

@param		{Real}		n

@return		{Bool}
@pure
*/

function is_even(n)
{
	// not an integer!
	if (!is_int(n))
	{
		return false;
	}
	
	n = floor(n);
	return !bool(n % 2);
}
