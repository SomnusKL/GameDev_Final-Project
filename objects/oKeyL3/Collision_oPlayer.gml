/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


image_xscale = 0.8;
image_yscale = 0.8;

//x = oPlayer.x;
//y = oPlayer.y;
audio_play_sound(soundGetItem,1,false);
global.getKey = true;
instance_destroy();
if(global.getKey){
show_debug_message("get Key");
}