/**
@desc		Converts a value from pixels (px) to points (pt)

@param		{Real}		px
@param		{Bool}		[round_result]		Whether to round the result or not (default: true)

@return		{Real}
@pure
*/

function px_to_pt(px, round_result = true)
{
	var result = px * 0.75;
	if (round_result) { result = round(result); }
	return result;
}
