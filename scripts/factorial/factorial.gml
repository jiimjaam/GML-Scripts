/**
@desc		Returns the factorial of the provided integer

@param		{Real}		n

@return		{Real}
@pure
*/

function factorial(n)
{
	// get floor of n
	n = floor(n);
	// get sign of floored n and return result accordingly
	switch (sign(n))
	{
		// negative, return infinity
		case -1:
			return (infinity);
		
		// zero, return 1
		case 0:
			return (1);
			
		case 1:
			// one, return 1
			if (n == 1)
			{
				return (1);
			}
			// return factorial of n
			else
			{
				// multiply n by every integer before it
				for (var i = n - 1; i >= 1; --i)
				{
					n *= i;
				}
	
				return (n);
			}
	}
}
