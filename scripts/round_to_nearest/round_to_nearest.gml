/**
@desc		Rounds a number to the nearest multiple of a number

@param		{Real}		x			The number to round
@param		{Real}		n			The nearest multiple to find
@param		{Real}		[dir]		The direction to round: -1 = floor, 0 = round, 1 = ceil. Default: 0

@return		{Real}
@pure
*/

/////////////////////////
// 
// EXAMPLES:
// 
// (   49,  100, -1)		->		    0
// (   49,  100,  0)		->		    0
// (   49,  100,  1)		->		  100
//
// (   50,  100, -1)		->		    0
// (   50,  100,  0)		->		  100
// (   50,  100,  1)		->		  100
//
// (2_600,  400, -1)		->		2_400
// (2_600,  400,  0)		->		2_800
// (2_500,  400,  1)		->		2_800
// 
/////////////////////////

function round_to_nearest(x, n, dir = 0)
{
	switch (dir)
	{
		case -1:
			return (floor(x / n) * n);
		
		case 0:
			return (round(x / n) * n);
		
		case 1:
			return (ceil(x / n) * n);
	}
}
