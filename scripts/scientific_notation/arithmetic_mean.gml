/**
@desc		Returns arithmetic mean of provided array of real numbers

@param		{Array<Real>}		array		Array to get arithmetic mean of

@return		{Real}
@pure
*/

function arithmetic_mean(_array)
{
	var res = 0, len = array_length(_array);
	
	var i;
	for (i = 0; i < len; i++)
	{
		res += _array[i];
	}

	
	if (array_length(_array) > 0)
	{
		return (res / len);	
	}
	else
	{
		return 0;	
	}
}