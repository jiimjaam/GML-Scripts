/// put any functions you want to try out here and you can see them printed to the console!

// loop through a set of natural numbers and print their binary and hexadecimal notations
show_debug_message("DECIMAL AND HEXADECIMAL");
for (var i = 0; i <= 32; ++i)
{
	show_debug_message("{0}\n	binary: {1}\n	two's complement negative: {2}\n	hexadecimal: {3}", i, decimal_to_binary(i, false), decimal_to_binary(-i, false), decimal_to_hexadecimal(i, false));
}
show_debug_message("");

// display nth weekdays of random months
show_debug_message("NTH WEEKDAYS");
for (var i = 1; i <= 12; ++i)
{
	var weekday = irandom(6);
	var n = irandom_range(1, 5);
	
	var str = "";
	var nth_weekday = date_month_get_weekday(current_year, i, weekday, n);
	if (nth_weekday != -1)
	{
		str = date_date_string(nth_weekday);
	}
	else
	{
		str = "-1";
	}
	
	show_debug_message("{0} {1} of {2}: {3}", string_format_ordinal(n), date_weekday_string(weekday), date_month_string(i), str);
}
show_debug_message("");

// display ordinal numbers
show_debug_message("ORDINALS");
for (var i = 0; i <= 100; ++i)
{
	show_debug_message("{0}", string_format_ordinal(i));
}
show_debug_message("");

// display output of Sudan function
show_debug_message("SUDAN FUNCTION");
var sudan_bounds = 5;
for (var _x = 0; _x <= sudan_bounds; ++_x)
{
	for (var _y = 0; _y <= sudan_bounds; ++_y)
	{
		for (var n = 0; n <= 1; ++n)
		{
			show_debug_message("Sudan function output for ({0}, {1}, {2}): {3}", _x, _y, n, Sudan_function(_x, _y, n));
		}
	}
}
show_debug_message("");

// display output of Ackermann function
show_debug_message("ACKERMANN FUNCTION");
var ackermann_bounds = 5;
for (var m = 0; m <= ackermann_bounds; ++m)
{
	for (var n = 0; n <= ackermann_bounds; ++n)
	{
		for (var p = 0; p <= 2; ++p)
		{
			show_debug_message("Ackermann function output for ({0}, {1}, {2}): {3}", m, n, p, Ackermann_function(m, n, p));
		}
	}
}
show_debug_message("");

// display output of McCarthy 91 function
show_debug_message("MCCARTHY 91 FUNCTION");
for (var n = -10; n <= 200; ++n)
{
	show_debug_message("McCarthy 91 function output for {0}: {1}", n, McCarthy_91_function(n));
}
show_debug_message("");