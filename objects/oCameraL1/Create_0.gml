/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;
xTo = xstart;
yTo = ystart;

audio_play_sound(Background,6,true);