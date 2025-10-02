/**
@desc		Wilhelm Ackermann's early example of a function that is total and computable but not primitive recursive

@param		{Real}		m
@param		{Real}		n
@param		{Real}		p

@return		{Real}
*/

function Ackermann_function(m, n, p)
{
	// disallow negative arguments
	if (sign(m) == -1 || sign (n) == -1 || sign(p) == -1)
	{
		return (undefined);
	}

	// round all arguments to nearest integers
	m = round(m);
	n = round(n);
	p = round(p);
	
	// Ackermann function (Ackermann's original definition)
	if (p == 0)
	{
		return (m + n);
	}
	else if (n == 0)
	{
		switch (p)
		{
			case 1:
				return (0);
			
			case 2:
				return (1);
			
			default:
				return (m);
		}
	}
	else
	{
		return (Ackermann_function(m, Ackermann_function(m, n - 1, p), p - 1));
	}
}
