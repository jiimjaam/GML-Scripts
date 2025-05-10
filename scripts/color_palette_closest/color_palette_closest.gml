/**
@desc		Returns the closest color to the provided color in the provided palette

@param		{Constant.Color}			color		The color to compare
@param		{Array<Constant.Color>}		palette		The palette to use for comparing

@return		{Constant.Color}
@pure
*/

function color_palette_closest(color, palette)
{
	// Get length of palette array
	var len = array_length(palette);

	// Initialize loop through palette array
	var nearest = palette[0];
	var nearest_delta = sqrt ( sqr(abs(color_get_red(color) - color_get_red(palette[0]))) + sqr(abs(color_get_green(color) - color_get_green(palette[0]))) + sqr(abs(color_get_blue(color) - color_get_blue(palette[0]))) );

	// Loop through palette array to find closest color
	for (var i = 1; i < len; ++i)
	{
		var d = sqrt ( sqr(abs(color_get_red(color) - color_get_red(palette[i]))) + sqr(abs(color_get_green(color) - color_get_green(palette[i]))) + sqr(abs(color_get_blue(color) - color_get_blue(palette[i]))) );
		if (d < nearest_delta)
		{
			nearest_delta = d;
			nearest = palette[i];
		}
	}

	// Return closest color
	return nearest;
}