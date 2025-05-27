/**
@desc		Creates a new Vector4 struct (defaults to {0, 0, 0, 0})

@param		{Real}		[x]
@param		{Real}		[y]
@param		{Real}		[z]
@param		{Real}		[w]

@return		{Struct.Vector4}
*/

function Vector4(_x = 0, _y = 0, _z = 0, _w = 0) : Vector3(_x, _y, _z) constructor
{
	w = _w;

	/// @param				{Struct.Vector4}				vec4
	/// @return				{Bool}
	/// @pure
	static Equals = function(_vec4)
	{
	    return (x == _vec4.x && y == _vec4.y && z == _vec4.z && w == _vec4.w);
	};
		
	/// @param				{Struct.Vector4}				vec4
	/// @return				{Undefined}
	static Add = function(_vec4)
	{
	    x += _vec4.x;
	    y += _vec4.y;
		z += _vec4.z;
		w += _vec4.w;
	};
		
	/// @param				{Struct.Vector4}				vec4
	/// @return				{Undefined}
	static Substract = function(_vec4)
	{
	    x -= _vec4.x;
	    y -= _vec4.y;
		z -= _vec4.z;
		w -= _vec4.w;
	};
	
	/// @return				{Real}
	/// @pure
	static Magnitude = function()
	{
		return sqrt(sqr(x) + sqr(y) + sqr(z) + sqr(w));
	};
	
	/// @return				{Struct.Vector4}
	/// @pure
	static Normalized = function()
	{
		var mag = Magnitude();
		return (new Vector4(x / mag, y / mag, z / mag, w / mag));
	};
};