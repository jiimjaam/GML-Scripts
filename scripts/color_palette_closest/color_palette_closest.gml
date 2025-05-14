/**
@desc		Returns the closest color to the provided color in the provided palette (measured by hue)

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
	var nearest_delta = abs(color_get_hue(color) - color_get_hue(nearest));

	// Loop through palette array to find closest color
	for (var i = 1; i < len; ++i)
	{
		var d = abs(color_get_hue(color) - color_get_hue(palette[i]));
		if (d < nearest_delta)
		{
			nearest_delta = d;
			nearest = palette[i];
		}
	}

	// Return closest color
	return nearest;
}
