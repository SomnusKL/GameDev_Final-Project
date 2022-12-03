/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

cam = view_camera[0];
follow = oPlayerStart;
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;
xTo = xstart;
yTo = ystart;


shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

