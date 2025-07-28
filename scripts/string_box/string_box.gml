/**
@desc		Returns the given string with an ASCII box around it

@param		{Any}		string			The string to be converted into an ASCII box
@param		{Real}		[margin]		The margin (in number of whitespaces) to draw the box with (Default: 0)
@param		{Bool}		[double]		Whether to return the string with a single-lined (false) or double-lined (true) border (Default: false)

@return		{String}
@pure
*/

function string_box(_string, _margin = 0, _double = false)
{
	// convert input into string if not already a string
	if (!is_string(_string))
	{
		_string = string(_string);	
	}
	
	// define character set based on input paramaters
	var left_top, left_bottom, right_top, right_bottom, horizontal, vertical;
	switch (_double)
	{
		case false:
			left_top = "┌";
			left_bottom = "└";
			right_top = "┐";
			right_bottom = "┘";
			horizontal = "─";
			vertical = "│";
			break;
		
		case true:
			left_top = "╔";
			left_bottom = "╚";
			right_top = "╗";
			right_bottom = "╝";
			horizontal = "═";
			vertical = "║";
			break;
	}
	
	// split string in case of any linebreaks
	var strs = string_split(_string, "\n", false);
	var result_str = "";
	
	// determine size of font characters (separately in case it's not 1x1 monospaced)
	var char_w = string_width(" "), char_h = string_height(" ");
	// get width and height 
	var str_w = string_width(_string) / char_w, str_h = string_height(_string) / char_h;
	var box_w = str_w + (_margin * 2), box_h = str_h + (_margin * 2);
	// define box string
	// top border
	result_str += left_top + string_repeat(horizontal, box_w) + right_top + "\n";
	// top margin
	repeat(_margin)
	{
		result_str += vertical + string_repeat(" ", box_w) + vertical + "\n";
	}
	// loop through string lines
	for (var i = 0; i < array_length(strs); ++i)
	{
		var line = strs[i];
		var right_margin = str_w - string_length(line);
		result_str += vertical + string_repeat(" ", _margin) + line + string_repeat(" ", right_margin) + string_repeat(" ", _margin) + vertical + "\n";
	}
	// bottom margin
	repeat(_margin)
	{
		result_str += vertical + string_repeat(" ", box_w) + vertical + "\n";
	}
	result_str += left_bottom + string_repeat(horizontal, box_w) + right_bottom;
	
	return result_str;
}
