/**
@desc		Draws the bounding box of a given instance to screen

@param		{Id.Instance}			[inst]		The instance to draw the bounding box of. Optional, defaults to self
@param		{Constant.Colour}		[color]		The color to draw the bounding box with. Optional, defaults to green (#00FF00)
@param		{Real}					[alpha]		The alpha to draw the bounding box with. Optional, defaults to 1

@return		{Undefined}
*/

function draw_hitbox(inst = self, color = #00FF00, alpha = 1)
{
	// get previous draw settings
	var prev_color = draw_get_color(),
		prev_alpha = draw_get_alpha();
	
	// define hitbox bounds
	var left = inst.bbox_left,
		top = inst.bbox_top,
		right = inst.bbox_right - 1,
		bottom = inst.bbox_bottom - 1;
	
	// draw hitbox
	draw_set_color(color);
	draw_set_alpha(alpha);
	draw_rectangle(left, top, right, bottom, true);
	
	// return to previous draw settings
	draw_set_color(prev_color);
	draw_set_alpha(prev_alpha);
}
