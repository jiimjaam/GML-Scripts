/**
@desc		Returns a struct containing the Moore neighborhood of a 2-dimensional coordinate

@param		{Real}		[x]		The x position to get the Moore neighborhood of
@param		{Real}		[y]		The y position to get the Moore neighborhood of

@return		{Struct.MooreNeighborhood}
@pure
*/

function MooreNeighborhood(_x = 0, _y = 0) : VonNeumannNeighborhood(_x, _y) constructor
{
	// define Moore neighborhood
	nw	= new Vector2(	c.x - 1	,	c.y - 1	);
	ne	= new Vector2(	c.x + 1	,	c.y - 1	);
	sw	= new Vector2(	c.x - 1	,	c.y + 1	);
	se	= new Vector2(	c.x + 1	,	c.y + 1	);
}
