/**
@desc		Creates a new BinaryHeap struct

@param		{Array}			[array]		The array to create a binary heap from (Defaults to an empty array)

@return		{Struct.BinaryHeap}
@pure
*/

function BinaryHeap(_array = []) constructor
{
	#region				VARIABLES
	
	heap = _array;
	
	#endregion
	
	#region				FUNCTIONS
	
	/// @desc		Gets the value of an index in the heap
	/// @param		{Real}		index
	/// @return		{Any}
	static GetIndex = function(_index)
	{
		return (heap[_index]);
	};
	
	/// @desc		Gets the value of the parent of an index in the heap
	/// @param		{Real}		index
	/// @return		{Any}
	static GetIndexParent = function(_index)
	{
		if (_index == 0)
		{
			return -1;	
		}
		else
		{
			return (heap[floor((_index - 1) / 2)]);
		}
	};
	
	/// @desc		Gets the value of the "left" child of an index in the heap
	/// @param		{Real}		index
	/// @return		{Any}
	static GetIndexLeftChild = function(_index)
	{
		return (heap[(2 * _index) + 1]);
	};
	
	/// @desc		Gets the value of the "right" child of an index in the heap
	/// @param		{Real}		index
	/// @return		{Any}
	static GetIndexRightChild = function(_index)
	{
		return (heap[(2 * _index) + 2]);
	};
	
	/// @desc		Gets the value of the "right" child of an index in the heap
	/// @param		{Real}		index
	/// @return		{Any}
	static Insert = function(_index)
	{
		return (heap[(2 * _index) + 2]);
	};
	
	#endregion
}
