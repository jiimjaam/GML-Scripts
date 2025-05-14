/**
@desc		Creates a new Vector2 struct (defaults to {0, 0})

@param		{Real}		[x]
@param		{Real}		[y]

@return		{Struct.Vector2}
*/

function Vector2(_x = 0, _y = 0) constructor
{
	x = _x;
	y = _y;

	/// @param				{Struct.Vector2}				vec2
	static Equals = function(_vec2)
	{
	    return (x == _vec2.x && y == _vec2.y);
	}
		
	/// @param				{Struct.Vector2}				vec2
	static Add = function(_vec2)
	{
	    x += _vec2.x;
	    y += _vec2.y;
	}
		
	/// @param				{Struct.Vector2}				vec2
	static Substract = function(_vec2)
	{
	    x -= _vec2.x;
	    y -= _vec2.y;
	}
};