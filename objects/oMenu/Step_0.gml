/// @des Control Menu

//ease in
menu_x += (menu_x_target - menu_x) / menu_speed;


//Keyboard Control
if (menu_control)
{
	if (keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("W")))
	{
		audio_play_sound(SoundSelect,5,false);
		menu_cursor ++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down)|| keyboard_check_pressed(ord("S")))
	{
		audio_play_sound(SoundSelect,5,false);
		menu_cursor --;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	if(keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		audio_play_sound(SoundSelectComfirm,10,false);
		ScreenShake(10,40);
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
	
		case 2: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	
	}
}
