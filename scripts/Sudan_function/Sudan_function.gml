/**
@desc		Gabriel Sudan's early example of a function that is recursive but not primitive recursive

@param		{Real}		x
@param		{Real}		y
@param		{Real}		n

@return		{Real}
*/

function Sudan_function(_x, _y, n)
{
	// disallow negative arguments for n
	if (sign(n) == -1)
	{
		return (undefined);
	}
	
	// round all arguments to nearest integers
	_x = round(_x);
	_y = round(_y);
	n = round(n);
	
	// Sudan function
	if (n == 0)
	{
		return (_x + _y);
	}
	else if (_y == 0)
	{
		return (_x);
	}
	else
	{
		return (Sudan_function(Sudan_function(n, _x, _y - 1), Sudan_function(n, _x, _y - 1) + _y, n - 1));
	}
}
