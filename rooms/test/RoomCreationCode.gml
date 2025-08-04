/// put any functions you want to try out here and you can see them printed to the console!\

// loop through a set of natural numbers and print their binary and hexadecimal notations
for (var t = 0; t <= 32; ++t)
{
	show_debug_message("{0}\n	binary: {1}\n	two's complement negative: {2}\n	hexadecimal: {3}", t, decimal_to_binary(t, false), decimal_to_binary(-t, false), decimal_to_hexadecimal(t, false));
}
