/**
@desc		Checks a specific position in the room for an object and returns its instance ID if it exists

@param		{Real}															x		The x coordinate within the room to check
@param		{Real}															y		The y coordinate within the room to check
@param		{Id.TileMapElement,Asset.GMObject,Id.Instance,Constant.All}		obj		The object (or instance ID, or the keyword "all") to check for at the given coordinates

@return		{Id.Instance}
@pure
*/

function instance_at_position(_x, _y, obj)
{
	var num = instance_number(obj);
	for (var i = 0; i < num; ++i)
	{
		var inst = instance_find(obj, i);
		
		if (inst.x == _x && inst.y == _y)
		{
			return inst.id;	
		}
	}
	
	return noone;
}
