/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(done == 0){
	vsp = vsp + grv;

	//Horizontal Collision
	if (place_meeting(x +hsp, y, oWall))
	{
		while(!place_meeting(x+sign(hsp), y, oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;


	//Verticle Collision
	if (place_meeting(x, y + vsp, oWall))
	{
		if(vsp > 0 )
		{
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x, y+sign(vsp), oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}
