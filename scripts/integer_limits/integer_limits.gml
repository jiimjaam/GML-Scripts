/**
@desc		Defines (as runtime macros) the common n-bit integer limits used in computing

@return		{Undefined}
*/

function integer_limits()
{
	// BYTES
	#macro				SBYTE_MIN				                      -128
	#macro				SBYTE_MAX				                       127
	#macro				UBYTE_MAX				                       255
	// SHORTS
	#macro				SSHORT_MIN				                   -32_768
	#macro				SSHORT_MAX				                    32_767
	#macro				USHORT_MAX				                    65_535
	// INTS
	#macro				SINT_MIN				            -2_147_483_648
	#macro				SINT_MAX				             2_147_483_647
	#macro				UINT_MAX				             4_294_967_295
	// LONGS
	#macro				SLONG_MIN				-9_223_372_036_854_775_808
	#macro				SLONG_MAX				 9_223_372_036_854_775_807
	#macro				ULONG_MAX				18_446_744_073_709_551_615
}
