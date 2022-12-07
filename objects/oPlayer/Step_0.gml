/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


key_left= keyboard_check(vk_left)||keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)||keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
hsp =  move * walksp;
vsp = vsp + grv;




if(y>room_height){
	SlideTransition(TRANS_MODE.GOTO, room);
}

if (place_meeting(x, y + 1, oWall))
{	
     moreJump = 1; // variable to set the maximum number of jumps, you can change the value to 2 or 3 or more if you want to add more jumps.
     if (key_jump)
	 {
		 vsp -= 7; //the basic one jump when you're on the ground
		 audio_play_sound(soundJump,1,false);
	 }
}  

else  {  
     if (key_jump and moreJump >  0) {
         vsp = 0; // reset the gravity before jumping again! 
         vsp -= 5.5; // jump again
         moreJump -= 1;
		 
		 audio_play_sound(soundJump,2,false);
		 audio_play_sound(soundJump2,4,false);
    }
}

if(vsp=0)&&(place_meeting(x,y+1,oWall)){
	audio_play_sound(soundLand,1,false);
}


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
	while(!place_meeting(x, y+sign(vsp), oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;


//Animation
if (!place_meeting(x, y+1, oWall))
{
	sprite_index = sPlayer_A;
	image_speed = 0;
	if(sign(vsp)>0)
	{
		image_index = 1;
	}else{
		image_index = 0;
	}
}
else
{
	if(sprite_index == sPlayer_A){
	audio_sound_pitch(soundLand, choose(0.8, 1.0, 1.2));
	audio_play_sound(soundLand,6,false);	
	}
	image_speed = 1;
	if (hsp ==0)
	{
		sprite_index = sPlayer;	
	}
	else
	{
		sprite_index = sPlayer_Run;	
	}
}

if (hsp != 0) image_xscale = sign(hsp);
