///@description Change rooms
///@arg room
var fade = instance_create_depth(x, y, 0, oFadeEntry);
fade.image_alpha = 1;
fade.fade_color = c_black;
fade.fade_speed = 0.001;
room_goto(argument[0]);


