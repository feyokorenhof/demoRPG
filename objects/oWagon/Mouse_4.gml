/// @description Show MSG when clicked
if collision_point(mouse_x, mouse_y, oWagon, true, false) 
{ 
	//Arguments are (x, y, obj, prec, notme)
	
	if distance_to_object(oWagon) < 5
	{
		show_debug_message("These are wagons");
	}
	else
	{
		show_debug_message("This is a wagon"); 
	}
    
		
}
