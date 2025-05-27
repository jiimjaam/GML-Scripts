/**
@desc		Returns if the provided number is an integer or not

@param		{Real}		n

@return		{Bool}
@pure
*/

function is_int(n)
{
	switch (frac(n))
	{
		case 0:
			return true;
			
		default:
			return false;
	}
}
