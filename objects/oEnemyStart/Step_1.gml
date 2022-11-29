/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if (hp <= 0)
{
	with(instance_create_layer(x, y, layer, oDead))
	{
		audio_play_sound(soundDead,1,false);
		direction = other.hitfrom;	
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign(hsp);
	}
	
	instance_destroy();
	room_goto(Room1);
}

