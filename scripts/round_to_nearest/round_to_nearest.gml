/**
@desc		Rounds a number to the nearest multiple of a number

@param		{Real}		x		The number to round
@param		{Real}		n		The nearest multiple to find

@return		{Real}
@pure
*/

/////////////////////////
// 
// EXAMPLES:
// (   49,  100) ->     0
// (   50,  100) ->   100
// (2_500,  400) -> 2_400
// 
/////////////////////////

function round_to_nearest(x, n)
{
	return (round(x / n) * n);
}
