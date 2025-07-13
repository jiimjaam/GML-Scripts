/**
@desc		Returns a struct containing the Moore neighborhood of a 2-dimensional coordinate

@param		{Struct.Vector2}		[coord]		The position to get the Moore neighborhood of

@return		{Struct.MooreNeighborhood}
@pure
*/

function MooreNeighborhood(coord = new Vector2(0, 0)) constructor
{
	coord.x = floor(coord.x);
	coord.y = floor(coord.y);
	
	nw	= new Vector2(	coord.x - 1	,	coord.y - 1	);
	n	= new Vector2(	coord.x		,	coord.y - 1	);
	ne	= new Vector2(	coord.x + 1	,	coord.y - 1	);
	w	= new Vector2(	coord.x - 1	,	coord.y		);
	c	= new Vector2(	coord.x		,	coord.y		);
	e	= new Vector2(	coord.x + 1	,	coord.y		);
	sw	= new Vector2(	coord.x - 1	,	coord.y + 1	);
	s	= new Vector2(	coord.x		,	coord.y + 1	);
	se	= new Vector2(	coord.x + 1	,	coord.y + 1	);
}
