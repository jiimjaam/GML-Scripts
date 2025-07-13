/**
@desc		Returns a struct containing the Von Neumann neighborhood of a 2-dimensional coordinate

@param		{Real}		[x]		The x position to get the Von Neumann neighborhood of
@param		{Real}		[y]		The y position to get the Von Neumann neighborhood of

@return		{Struct.VonNeumannNeighborhood}
@pure
*/

function VonNeumannNeighborhood(_x = 0, _y = 0) constructor
{
	// round x and y values to get integer values for coordinates
	switch (sign(_x))
	{
		case -1:
			_x = ceil(_x);
			break;
		
		case 1:
			_x = floor(_x);
			break;
	}
	switch (sign(_y))
	{
		case -1:
			_y = ceil(_y);
			break;
		
		case 1:
			_y = floor(_y);
			break;
	}
	
	// define Von Neumann neighborhood
	n	= new Vector2(	_x		,	_y - 1	);
	w	= new Vector2(	_x - 1	,	_y		);
	c	= new Vector2(	_x		,	_y		);
	e	= new Vector2(	_x + 1	,	_y		);
	s	= new Vector2(	_x		,	_y + 1	);
}
