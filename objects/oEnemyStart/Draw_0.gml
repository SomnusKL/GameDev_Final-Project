/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();

if(flash > 0)
	{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();

	}