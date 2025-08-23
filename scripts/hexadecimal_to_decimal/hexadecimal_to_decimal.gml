/**
@desc		Converts an integer from hexadecimal to decimal notation

@param		{String}		n		The number to convert

@return		{Real}
@pure
*/

function hexadecimal_to_decimal(n)
{
	// convert input to all uppercase to simplify comparisons
	n = string_upper(n);
	// variable to keep track of which digit place we're at
	var digit = 0;
	// loop through input string and add up each digit to final result
	var result = 0;
	for (var i = string_length(n); i >= 1; { --i; ++digit; })
	{
		// get value of current digit
		var _val;
		switch (string_char_at(n, i))
		{
			case "A":
				_val = 10;
				break;
			
			case "B":
				_val = 11;
				break;
			
			case "C":
				_val = 12;
				break;
			
			case "D":
				_val = 13;
				break;
			
			case "E":
				_val = 14;
				break;
			
			case "F":
				_val = 15;
				break;
			
			default:
				_val = real(string_char_at(n, i));
				break;
		}
		
		// multiply value by digit place and add to final result
		result += _val * power(16, digit);
	}
	
	// return final result
	return (result);
}
