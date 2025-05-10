/**
@desc		Returns the arithmetic mean of the provided set of real numbers

@param		{Array<Real>}		set

@return		{Real}
@pure
*/

function arithmetic_mean(set)
{
	var res = 0, len = array_length(set);
	
	var i;
	for (i = 0; i < len; ++i)
	{
		res += set[i];
	}
	
	return (res / len);
}
