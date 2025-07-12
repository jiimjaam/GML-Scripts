/**
@desc		Returns the input string in reverse

@param		{String}		string		The string to reverse

@return		{String}
@pure
*/

function string_reverse(_string)
{
	// empty string to store result in
	var reversed = "";
	
	// loop through input string backwards and copy each character
	for (var i = string_length(_string); i >= 1; --i)
	{
		reversed += string_copy(_string, i, 1);
	}
	
	return reversed;
}
