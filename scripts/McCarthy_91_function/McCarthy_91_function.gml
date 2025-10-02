/**
@desc		John McCarthy's recursive function that is known to return 91 for all integers <= 101, including negatives

@param		{Real}		n		

@return		{Real}
*/

function McCarthy_91_function(n)
{
	// round n to nearest integer
	n = round(n);
	
	// McCarthy 91 function
	if (n > 100)
	{
		return (n - 10);
	}
	else
	{
		return (McCarthy_91_function(McCarthy_91_function(n + 11)));
	}
}
