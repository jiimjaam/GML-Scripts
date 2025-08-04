/**
@desc		Returns the factorial of the provided integer

@param		{Real}		n

@return		{Real}
@pure
*/

function factorial(n)
{
	switch (sign(n))
	{
		case -1:
			return infinity;
			
		case 0:
			return 1;
			
		case 1:
			n = floor(n);
			if (n == 0 || n == 1)
			{
				return 1;
			}
			
			for (var i = n - 1; i >= 1; --i)
			{
				n *= i;
			}
	
			return n;
	}
}
