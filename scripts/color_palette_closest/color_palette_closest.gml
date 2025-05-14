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
	var hue_delta = abs(color_get_hue(color) - color_get_hue(nearest));
	var sat_delta = abs(color_get_saturation(color) - color_get_saturation(nearest));
	var val_delta = abs(color_get_value(color) - color_get_value(nearest));

	// Loop through palette array to find closest color
	for (var i = 1; i < len; ++i)
	{
		var h = abs(color_get_hue(color) - color_get_hue(palette[i])),
			s = abs(color_get_saturation(color) - color_get_saturation(palette[i])),
			v = abs(color_get_value(color) - color_get_value(palette[i]));
		
		if (h < hue_delta)
		{
			hue_delta = h;
			nearest = palette[i];
		}
		else if (h == hue_delta)
		{
			if (v < val_delta)
			{
				val_delta = v;
				nearest = palette[i];
			}
		}
	}

	// Return closest color
	return nearest;
}
