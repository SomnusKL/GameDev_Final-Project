/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(global.getKey)&&(place_meeting(x,y,oPlayer)){
	audio_play_sound(soundDoor,1,false);
	room_goto(Room_success);
	show_debug_message("Opens the door");
}