//@description Start Dialog
//@param Dialog Object
//@param Dialog_Line


//Stop player movement and animation
oPlayer.listening = true;

//Create the oDialog_Controller
if( !instance_exists(oDialog_Controller))
{
	instance_create_depth(0, 0, 0, oDialog_Controller);
	oDialog_Controller.dialog_lines = argument[0].dialog;
	oDialog_Controller.dialog_line = argument[1];
	oDialog_Controller.fetch = true;
}
