/// @description Show MSG when clicked
if collision_point(mouse_x, mouse_y, oBarrel, true, false) 
{ 
	//Arguments are (x, y, obj, prec, notme)
	if distance_to_object(oBarrel) < 5
	{
		show_debug_message("These are barrels");
	}
	else
	{
		show_debug_message("This is a barrel"); 		
	}
    
		
}
