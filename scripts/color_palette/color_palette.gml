enum COLOR_PALETTE
{
	IBM = 0,
	WINDOWS,
	MACINTOSH,
	RISC,
	SOLARIS,
	C64,
		
	COUNT
};

/**
@desc		Returns an array of colors from a provided palette constant

@param		{Enum.COLOR_PALETTE}		palette		Which color palette to use (valid options: IBM, WINDOWS, MACINTOSH, RISC, SOLARIS, C64)

@return		{Array<Constant.Color>}
@pure
*/

function color_palette(palette)
{
	var colors = [];
	
	switch (palette)
	{
		case COLOR_PALETTE.C64:
			colors[ 0] = #000000; // black
			colors[ 1] = #FFFFFF; // white
			colors[ 2] = #880000; // red
			colors[ 3] = #AAFFEE; // cyan
			colors[ 4] = #CC44CC; // violet/purple
			colors[ 5] = #00CC55; // green
			colors[ 6] = #0000AA; // blue
			colors[ 7] = #EEEE77; // yellow
			colors[ 8] = #DD8855; // orange
			colors[ 9] = #664400; // brown
			colors[10] = #FF7777; // light red
			colors[11] = #333333; // grey #1 (dark grey)
			colors[12] = #777777; // grey #2 (grey)
			colors[13] = #AAFF66; // light green
			colors[14] = #0088FF; // light blue
			colors[15] = #BBBBBB; // grey #3 (light grey)
			break;
		
		case COLOR_PALETTE.SOLARIS:
			colors[ 0] = #000000; // black
			colors[ 1] = #FF0000; // red
			colors[ 2] = #00FF00; // green
			colors[ 3] = #BF7F00; // brown
			colors[ 4] = #0000FF; // blue
			colors[ 5] = #FF00FF; // magenta
			colors[ 6] = #00FFFF; // cyan
			colors[ 7] = #CFCFCF; // gray
			colors[ 8] = #9F9F9F; // dark gray
			colors[ 9] = #FF7F7F; // pink
			colors[10] = #7FFF7F; // pale green
			colors[11] = #FFFF00; // yellow
			colors[12] = #7F7FFF; // slate blue
			colors[13] = #FF7FFF; // orchid
			colors[14] = #7FFFFF; // aquamarine
			colors[15] = #FFFFFF; // white
			break;
		
		case COLOR_PALETTE.RISC:
			colors[ 0] = #FFFFFF; // white
			colors[ 1] = #DDDDDD; // grey #1
			colors[ 2] = #BBBBBB; // grey #2
			colors[ 3] = #999999; // grey #3
			colors[ 4] = #777777; // grey #4
			colors[ 5] = #555555; // grey #5
			colors[ 6] = #333333; // grey #6
			colors[ 7] = #000000; // black
			colors[ 8] = #004499; // dark blue
			colors[ 9] = #EEEE00; // yellow
			colors[10] = #00CC00; // green
			colors[11] = #DD0000; // red
			colors[12] = #EEEEBB; // beige
			colors[13] = #558800; // dark green
			colors[14] = #FFBB00; // gold/orange
			colors[15] = #00BBFF; // light blue
			break;
		
		case COLOR_PALETTE.MACINTOSH:
			colors[ 0] = #FFFFFF; // white
			colors[ 1] = #FCF404; // yellow
			colors[ 2] = #FF6404; // orange
			colors[ 3] = #DC0808; // red
			colors[ 4] = #F00884; // magenta
			colors[ 5] = #4800A4; // purple
			colors[ 6] = #0000D4; // blue
			colors[ 7] = #00ACE8; // cyan
			colors[ 8] = #20B814; // green
			colors[ 9] = #006410; // dark green
			colors[10] = #582C04; // brown
			colors[11] = #907038; // tan
			colors[12] = #C0C0C0; // light grey
			colors[13] = #808080; // medium grey
			colors[14] = #404040; // dark grey
			colors[15] = #000000; // black
			break;
			
		case COLOR_PALETTE.WINDOWS:
			colors[ 0] = #000000; // black
			colors[ 1] = #800000; // dark red
			colors[ 2] = #008000; // dark green
			colors[ 3] = #808000; // dark yellow
			colors[ 4] = #000080; // dark blue
			colors[ 5] = #800080; // dark magenta
			colors[ 6] = #008080; // dark cyan
			colors[ 7] = #C0C0C0; // light grey
			colors[ 8] = #C0DCC0; // money green
			colors[ 9] = #A6CAF0; // sky blue
			colors[10] = #FFFBF0; // cream
			colors[11] = #A0A0A4; // medium grey
			colors[12] = #808080; // dark grey
			colors[13] = #FF0000; // red
			colors[14] = #00FF00; // green
			colors[15] = #FFFF00; // yellow
			colors[16] = #0000FF; // blue
			colors[17] = #FF00FF; // magenta
			colors[18] = #00FFFF; // cyan
			colors[19] = #FFFFFF; // white
			break;
		
		case COLOR_PALETTE.IBM:
			colors[ 0] = #000000; // black
			colors[ 1] = #800000; // maroon
			colors[ 2] = #008000; // green
			colors[ 3] = #808000; // olive
			colors[ 4] = #000080; // navy
			colors[ 5] = #800080; // purple
			colors[ 6] = #008080; // teal
			colors[ 7] = #C0C0C0; // silver
			colors[ 8] = #808080; // gray
			colors[ 9] = #FF0000; // red
			colors[10] = #00FF00; // lime
			colors[11] = #FFFF00; // yellow
			colors[12] = #0000FF; // blue
			colors[13] = #FF00FF; // fuchsia
			colors[14] = #00FFFF; // aqua
			colors[15] = #FFFFFF; // white
			break;
	}
	
	return colors;
}