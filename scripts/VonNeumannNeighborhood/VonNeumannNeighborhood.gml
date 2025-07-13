/**
@desc		Returns a struct containing the Von Neumann neighborhood of a 2-dimensional coordinate

@param		{Struct.Vector2}		[coord]		The position to get the Von Neumann neighborhood of

@return		{Struct.VonNeumannNeighborhood}
@pure
*/

function VonNeumannNeighborhood(coord = new Vector2(0, 0)) constructor
{
	coord.x = floor(coord.x);
	coord.y = floor(coord.y);
	
	n	= new Vector2(	coord.x		,	coord.y - 1	);
	w	= new Vector2(	coord.x - 1	,	coord.y		);
	c	= new Vector2(	coord.x		,	coord.y		);
	e	= new Vector2(	coord.x + 1	,	coord.y		);
	s	= new Vector2(	coord.x		,	coord.y + 1	);
}
