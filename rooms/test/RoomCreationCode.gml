/// put any functions you want to try out here and you can see them printed to the console!\

// loop through a set of natural numbers and print their binary and hexadecimal notations
for (var t = WEB_SAFE_COLORS - 1000; t <= WEB_SAFE_COLORS; ++t)
{
	show_debug_message("{0} (binary: {1}) (two's complement: {2}) (hexadecimal: {3})", t, decimal_to_binary(t, true), decimal_to_binary(-t, true), decimal_to_hexadecimal(t, true));
}
