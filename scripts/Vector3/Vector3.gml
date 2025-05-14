/**
@desc		Creates a new Vector3 struct (defaults to {0, 0, 0})

@param		{Real}		[x]
@param		{Real}		[y]
@param		{Real}		[z]

@return		{Struct.Vector3}
*/

function Vector3(_x = 0, _y = 0, _z = 0) : Vector2(_x, _y) constructor
{
	z = _z;

	/// @param				{Struct.Vector3}				vec3
	static Equals = function(_vec3)
	{
	    return (x == _vec3.x && y == _vec3.y && z == _vec3.z);
	}
		
	/// @param				{Struct.Vector3}				vec3
	static Add = function(_vec3)
	{
	    x += _vec3.x;
	    y += _vec3.y;
		z += _vec3.z;
	}
		
	/// @param				{Struct.Vector3}				vec3
	static Substract = function(_vec3)
	{
	    x -= _vec3.x;
	    y -= _vec3.y;
		z -= _vec3.z;
	}
};