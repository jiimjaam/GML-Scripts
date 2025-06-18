/**
@desc		Returns a string with an ASCII box to be drawn around it

@param		{Real}			x				The x coordinate of the drawn string
@param		{Real}			y				The y coordinate of the drawn string
@param		{String}		string			The string to draw
@param		{Real}			[margin]		The margin (in number of whitespaces) to draw the box with (Default: 0)

@return		{Undefined}
*/

function draw_text_box(_x, _y, _string, _margin = 0)
{
	// determine size of font characters (separately in case it's not 1x1 monospaced)
	var char_w = string_width(" "), char_h = string_height(" ");
	// get width and height 
	var str_w = string_width(_string) / char_w, str_h = string_height(_string) / char_h;
	var box_w = str_w + (_margin * 2), box_h = str_h + (_margin * 2);
	draw_text(x, y, string("╔{0}╗\n{1}╚{0}╝", string_repeat("═", box_w), string("{0}{1}{0}", string_repeat("║" + string_repeat(" ", box_w) + "║\n", _margin), "║" + string_repeat(" ", _margin) + _string + string_repeat(" ", _margin) + "║\n")));
}
