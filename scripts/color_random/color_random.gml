/**
@desc		Returns a random web safe color (0 to 16,777,215)

@return		{Constant.Color}
@pure
*/

#macro				WEB_SAFE_COLORS				16_777_215

function color_random()
{
	return irandom_range(0, WEB_SAFE_COLORS);
}
