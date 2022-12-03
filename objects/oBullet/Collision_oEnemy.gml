/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


with (other)
{
	hp = hp - 1;
	flash = 3;
	hitfrom = other.direction;
	audio_play_sound(soundHit,1,false);
}
instance_destroy();