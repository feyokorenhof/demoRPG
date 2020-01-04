/// @description Draw the dialog box

if( !fetch )
{
	draw_set_font( fntDialog );
	
	var x_offset = 0;
	if( dialog_avatar != "")
	{
		if( dialog_left_facing )
		{
			x_offset = -32;
		}
		else
		{
			x_offset = 32;
		}
	}
	
	var x_pos = camera_get_view_width( view_camera[0] ) / 2  - 96 - x_offset;
	var y_pos = camera_get_view_height( view_camera[0] ) - 100;
	
	//Draw our dialog box
	draw_set_halign( fa_left ); //Make sure our font is left aligned
	draw_sprite ( sDialog_Box, 0, x_pos, y_pos );
	draw_set_color(c_white);
	draw_text_ext( x_pos + 10, y_pos + 6, string_hash_to_newline( dialog_output), 16, 175 );
	
	//Draw out avatar box (if avatar is available)
	if( dialog_avatar != "")
	{
		if( dialog_left_facing )
		{
			draw_sprite( sDialog_Portrait_Box, 1, x_pos - 61, y_pos );
			draw_sprite( dialog_avatar, 0, x_pos - 56, y_pos + 4 );
		}
		else
		{
			draw_sprite( sDialog_Portrait_Box, 0, x_pos + 186, y_pos );
			draw_sprite_ext( dialog_avatar , 0, x_pos + 248, y_pos + 4, -1, 1, 0, c_white, 1)
		}
	}

	
}

