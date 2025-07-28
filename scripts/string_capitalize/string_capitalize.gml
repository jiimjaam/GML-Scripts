/**
@desc		Returns the input string with the first letter capitalized

@param		{String}		string		The string to capitalize

@return		{String}
@pure
*/

function string_capitalize(_string)
{
	if (string_length(_string) == 1)
	{
		return (string_upper(_string));
	}
	else
	{
		return (string_upper(string_char_at(_string, 1)) + string_copy(_string, 2, string_length(_string) - 1));
	}
}
