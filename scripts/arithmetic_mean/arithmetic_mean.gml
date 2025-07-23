/**
@desc		Returns the arithmetic mean of the provided array of real numbers

@param		{Array<Real>}		set

@return		{Real}
@pure
*/

function arithmetic_mean(set)
{
	// define variables to store final value and length of input array
	var res = 0, len = array_length(set);
	
	// loop through input array and add all reals to final value
	var i;
	for (i = 0; i < len; ++i)
	{
		res += set[i];
	}
	
	// divide final value by length of input array and return result
	return (res / len);
}
