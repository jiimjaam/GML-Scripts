/**
@desc		Returns a struct containing the Moore neighborhood of a 2-dimensional coordinate

@param		{Real}		[x]		The x position to get the Moore neighborhood of
@param		{Real}		[y]		The y position to get the Moore neighborhood of

@return		{Struct.MooreNeighborhood}
@pure
*/

function MooreNeighborhood(_x = 0, _y = 0) constructor
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
	
	// define Moore neighborhood
	nw	= new Vector2(	_x - 1	,	_y - 1	);
	n	= new Vector2(	_x		,	_y - 1	);
	ne	= new Vector2(	_x + 1	,	_y - 1	);
	w	= new Vector2(	_x - 1	,	_y		);
	c	= new Vector2(	_x		,	_y		);
	e	= new Vector2(	_x + 1	,	_y		);
	sw	= new Vector2(	_x - 1	,	_y + 1	);
	s	= new Vector2(	_x		,	_y + 1	);
	se	= new Vector2(	_x + 1	,	_y + 1	);
}
