/**
@desc		Rounds a number (x) to the nearest multiple of a number (n)

@param		{Real}		x		The number to round
@param		{Real}		n		The nearest multiple to find

@return		{Real}
@pure
*/

function round_to_nearest(x, n)
{
	return (round(x / n) * n);
}
