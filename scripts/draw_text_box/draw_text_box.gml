/**
@desc		Draws the given string with an ASCII box around it and a variable-transparency background

@param		{Real}			x						The x coordinate of the drawn ASCII box
@param		{Real}			y						The y coordinate of the drawn ASCII box
@param		{String}		string					The string to be drawn
@param		{Real}			[margin]				The margin (in number of whitespaces) to draw the box with (Default: 0)
@param		{Real}			[background_alpha]		The alpha transparency of the ASCII box's background (Default: 1)

@return		{Undefined}
*/

function draw_text_box(_x, _y, _string, _margin = 0, _background_alpha = 1)
{
	// convert input string to ASCII box string
	var str_box = string_box(_string, _margin);
	// get currently set draw vars
	var prev_color = draw_get_color();
	var prev_alpha = draw_get_alpha();
	// draw box background
	var char_width = string_width(" "), char_height = string_height(" ");
	var box_width = string_width(str_box) / char_width, box_height = string_height(str_box) / char_height;
	var line = string_repeat("█", box_width);
	var background_str = string_repeat(line + "\n", box_height - 1) + line;
	draw_set_color(#000000);
	draw_set_alpha(_background_alpha);
	draw_text(_x, _y, background_str);
	// draw ASCII box
	draw_set_color(prev_color);
	draw_set_alpha(prev_alpha);
	draw_text(_x, _y, str_box);
}
