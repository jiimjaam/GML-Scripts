/**
@desc		Converts a color constant into its equivalent web-safe hexcode

@param		{Constant.Color}		color		The color to convert

@return		{String}
@pure
*/

function color_get_hexadecimal(_color)
{
	// get hexadecimal string of color input
	var hex = decimal_to_hexadecimal(_color, false);
	// pad hexadecimal string to web-safe hexcode length (6 characters)
	while (string_length(hex) < 6)
	{
		hex = "0" + hex;
	}
	// swap red and blue values to account for GameMaker's BGR scheme
	var blue = string_copy(hex, 1, 2),
		green = string_copy(hex, 3, 2),
		red = string_copy(hex, 5, 2);
	// return final color string
	return (red + green + blue);
}
