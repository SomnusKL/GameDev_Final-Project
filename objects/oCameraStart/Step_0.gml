/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object postion
x += (xTo - x) / 25;
y += (yTo - y) / 25;


x = clamp(x, view_w_half,room_width - view_w_half);

y = clamp(y, view_w_half-100,room_height - view_w_half +150);


//screenshake
x+= random_range(-shake_remain,shake_remain);
y+= random_range(-shake_remain,shake_remain);

shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//Update camera view
camera_set_view_pos(cam, x-view_w_half,y-view_h_half);