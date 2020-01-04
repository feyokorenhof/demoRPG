/// @description Draw Fadeout
// You can write your code in this editor
draw_set_color(fade_color);
draw_set_alpha(image_alpha);

image_alpha -= fade_speed;
if(image_alpha == 0)
{
	instance_destroy();
}


draw_rectangle(0, 0, view_wport * 2, view_hport * 2, false);
draw_set_alpha(1);
