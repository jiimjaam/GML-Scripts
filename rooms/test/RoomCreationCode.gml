/// put any functions you want to try out here and you can see them printed to the console!\

// loop through a set of natural numbers and print their binary and hexadecimal notations
show_debug_message("DECIMAL AND HEXADECIMAL");
for (var t = 0; t <= 32; ++t)
{
	show_debug_message("{0}\n	binary: {1}\n	two's complement negative: {2}\n	hexadecimal: {3}", t, decimal_to_binary(t, false), decimal_to_binary(-t, false), decimal_to_hexadecimal(t, false));
}
show_debug_message("");

// display nth weekdays of random months
show_debug_message("NTH WEEKDAYS");
for (var d = 1; d <= 12; ++d)
{
	var weekday = irandom(6);
	var n = irandom_range(1, 5);
	
	var str = "";
	var nth_weekday = date_month_get_weekday(current_year, d, weekday, n);
	if (nth_weekday != -1)
	{
		str = date_date_string(nth_weekday);
	}
	else
	{
		str = "-1";
	}
	
	show_debug_message("{0} {1} of {2}: {3}", string_format_ordinal(n), date_weekday_string(weekday), date_month_string(d), str);
}
show_debug_message("");

// display ordinal numbers
show_debug_message("ORDINALS");
for (var o = 0; o <= 100; ++o)
{
	show_debug_message("{0}", string_format_ordinal(o));
}
show_debug_message("");
