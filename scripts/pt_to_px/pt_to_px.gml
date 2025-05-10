/**
@desc		Converts a value from points (pt) to pixels (px)

@param		{Real}		pt
@param		{Bool}		[round_result]		Whether to round the result or not (default: true)

@return		{Real}
@pure
*/

function pt_to_px(pt, round_result = true)
{
	var result = pt * (4 / 3);
	if (round_result) { result = round(result); }
	return result;
}
