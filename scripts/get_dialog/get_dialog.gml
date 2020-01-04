//@description Get dialog pieces from object
//@param start_line

if( fetch )
{
	dialog_output = "";
	dialog_output_speed = 0;
	var dialog_data = dialog_lines[dialog_line];
	
	//Check user input and set up default values if needed
	dialog_text = dialog_data[0];	
	dialog_continue = dialog_data[1];
	dialog_avatar = dialog_data[2];	
	dialog_left_facing = dialog_data[3];
	dialog_script = dialog_data[4];
	
	fetch = false; //Prevent this from running repeatedly
	
}
else
{
	//Finish filling in text / skip to next if user presses a key
	
	if( argument[0] )
	{
		if( string_length( dialog_text) > string_length( dialog_output )) 
		{
			dialog_output_speed = 1000;
		}
		else
		{
			if( dialog_continue ) 
			{
				dialog_line++;
				fetch = true;
			}
			else
			{				
				oPlayer.listening = false;
				instance_destroy();
				if( dialog_script != -1 && is_array(oPlayer.scripts) )
				{
					
					var pagescript = oPlayer.scripts[dialog_script];
					
					if( pagescript != -1 )
					{
						script_execute(pagescript[0], pagescript[1]);
					}
					
					
				
				} 
			}
		}
	}
	
	dialog_output = string_copy(dialog_text, 1, dialog_output_speed);
	dialog_output_speed += 0.8;
}