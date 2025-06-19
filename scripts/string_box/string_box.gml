/**
@desc		Returns the given string with an ASCII box around it

@param		{String}		string			The string to be converted
@param		{Real}			[margin]		The margin (in number of whitespaces) to draw the box with (Default: 0)

@return		{String}
*/

function string_box(_string, _margin = 0)
{
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
	result_str += "╔" + string_repeat("═", box_w) + "╗\n";
	// 
	repeat(_margin)
	{
		result_str += "║" + string_repeat(" ", box_w) + "║\n";
	}
	// loop
	for (var i = 0; i < array_length(strs); ++i)
	{
		var line = strs[i];
		var right_margin = str_w - string_length(line);
		result_str += "║" + string_repeat(" ", _margin) + line + string_repeat(" ", right_margin) + string_repeat(" ", _margin) + "║\n";
	}
	repeat(_margin)
	{
		result_str += "║" + string_repeat(" ", box_w) + "║\n";
	}
	result_str += "╚" + string_repeat("═", box_w) + "╝";
	
	return result_str;
}
