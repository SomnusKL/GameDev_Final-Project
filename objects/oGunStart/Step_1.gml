/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

x = oPlayerStart.x;
y = oPlayerStart.y + 15;

image_angle = point_direction(x,y,mouse_x,mouse_y);



firingdelay =  firingdelay - 1;
recoil = max(0, recoil -1);

if (mouse_check_button(mb_left)) && (firingdelay<0)
{
	recoil = 4;
	firingdelay = 10;
	with (instance_create_layer(x,y-3,"Bullets",oBullet))
	{
		audio_play_sound(soundSword,1,false);
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if(image_angle > 90) && (image_angle < 270){
	
	image_yscale = -1;
}else{
	image_yscale = 1;
}